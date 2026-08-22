#!/bin/bash
# ─────────────────────────────────────────────
#  build-hanamimi.sh — Hanamimi local release build
#
#  Usage:
#    ./build-hanamimi.sh            → full build + install + launch
#    ./build-hanamimi.sh --install  �� skip build, just install + launch
#    ./build-hanamimi.sh --help     → show this help
# ─────────────────────────────────────────────

set -euo pipefail

# ── Colours ──────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'

info()    { echo -e "${CYAN}[INFO]${RESET}  $*"; }
success() { echo -e "${GREEN}[OK]${RESET}    $*"; }
warn()    { echo -e "${YELLOW}[WARN]${RESET}  $*"; }
error()   { echo -e "${RED}[ERROR]${RESET} $*" >&2; }
die()     { error "$*"; exit 1; }

run() {
    echo -e "${YELLOW}  Running Command :${RESET} ${BOLD}$*${RESET}"
    "$@"
}

usage() {
    echo -e "${BOLD}Usage:${RESET}"
    echo -e "  build-hanamimi             Full build → install → launch (release)"
    echo -e "  build-hanamimi --debug     Build debug APK"
    echo -e "  build-hanamimi --install   Skip build, just install + launch existing APK"
    echo -e "  build-hanamimi --help      Show this help"
    exit 0
}

# ── Parse args ───────────────────────────────
MODE="full"
BUILD_TYPE="release"
for arg in "$@"; do
    case "$arg" in
        --install) MODE="install" ;;
        --debug) BUILD_TYPE="debug" ;;
        --help|-h) usage ;;
        *) die "Unknown argument: $arg. Run with --help for usage." ;;
    esac
done

# ── Environment setup ────────────────────────
# Auto-detect Flutter SDK (non-interactive shells don't source .zshrc)
if ! command -v flutter &>/dev/null; then
    for candidate in "$HOME/flutter/bin" "$HOME/Downloads/flutter/bin" "/opt/homebrew/bin"; do
        if [[ -x "$candidate/flutter" ]]; then
            export PATH="$candidate:$PATH"
            break
        fi
    done
fi

# Auto-detect Android SDK
if [[ -z "${ANDROID_HOME:-}" ]]; then
    for candidate in "$HOME/Library/Android/sdk" "$ANDROID_HOME"; do
        if [[ -d "$candidate" ]]; then
            export ANDROID_HOME="$candidate"
            break
        fi
    done
fi

# China pub/Flutter mirrors (if not already set)
export PUB_HOSTED_URL="${PUB_HOSTED_URL:-https://pub.flutter-io.cn}"
export FLUTTER_STORAGE_BASE_URL="${FLUTTER_STORAGE_BASE_URL:-https://storage.flutter-io.cn}"

# Verify Flutter is available
command -v flutter &>/dev/null || die "Flutter SDK not found. Install it or set PATH manually."
info "Flutter: $(flutter --version 2>&1 | head -1)"

# ── Config ───────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR"
KEYSTORE_PATH="$PROJECT_DIR/android/keystore/sappy-release.jks"
KEY_PROPERTIES="$PROJECT_DIR/android/key.properties"
APP_PACKAGE="com.hanamimi.app"
APK_PATH="$PROJECT_DIR/build/app/outputs/flutter-apk/app-release.apk"

# ─────────────────────────────────────────────
echo ""
if [[ "$MODE" == "install" ]]; then
    echo -e "${BOLD}${CYAN}▶ Mode: Install + Launch only${RESET}"
else
    echo -e "${BOLD}${CYAN}▶ Mode: Build (${BUILD_TYPE}) + Install + Launch${RESET}"
fi
echo ""

# ── 1. ADB device check ──────────────────────
info "Checking for connected ADB devices..."
adb start-server &>/dev/null

# macOS-compatible: count lines ending with "device" (tab-device at EOL)
DEVICE_COUNT=$(adb devices | grep "device$" | grep -v "List of devices" | wc -l | tr -d ' ')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
    die "No ADB devices found. Connect a device and try again."
fi
success "Found $DEVICE_COUNT device(s):"
adb devices | grep "device$" | grep -v "List of devices" | awk '{print "         → " $1}'

# Get first device serial (macOS-compatible: use awk instead of grep -P)
DEVICE=$(adb devices | grep -v "List of devices" | awk '/device$/ {print $1; exit}')
ADB=(adb -s "$DEVICE")
info "Using device: $DEVICE"

# ── 2. Project dir check ─────────────────────
[[ -d "$PROJECT_DIR" ]] || die "Project directory not found: $PROJECT_DIR"
cd "$PROJECT_DIR"
success "Working directory: $PROJECT_DIR"

# ═════════════════════════════════════════════
#  INSTALL-ONLY MODE
# ═════════════════════════════════════════════
if [[ "$MODE" == "install" ]]; then
    [[ -f "$APK_PATH" ]] || die "No APK found at $APK_PATH — run a full build first."
    APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
    info "Found APK (${APK_SIZE}) — installing..."
    if ! run "${ADB[@]}" install -r "$APK_PATH"; then
        warn "Install failed — likely a debug↔release signature mismatch."
        warn "Uninstalling old build (app data will be reset) and retrying..."
        run "${ADB[@]}" uninstall "$APP_PACKAGE" || true
        run "${ADB[@]}" install "$APK_PATH"
    fi
    success "APK installed."

    info "Launching $APP_PACKAGE..."
    run "${ADB[@]}" shell monkey -p "$APP_PACKAGE" -c android.intent.category.LAUNCHER 1
    success "App launched!"

    echo ""
    echo -e "${BOLD}${GREEN}✓ Install → Launch complete!${RESET}"
    echo -e "  Package : ${CYAN}$APP_PACKAGE${RESET}"
    echo -e "  APK     : ${CYAN}$APK_PATH${RESET} (${APK_SIZE})"
    exit 0
fi

# ═════════════════════════════════════════════
#  FULL BUILD MODE
# ═════════════════════════════════════════════

# ── 3. Keystore check ────────────────────────
if [[ -f "$KEYSTORE_PATH" ]] && [[ -f "$KEY_PROPERTIES" ]]; then
    success "Keystore + key.properties found (signing handled by Gradle)."
else
    warn "No signing keystore found — will fall back to debug signing."
    warn "The APK will be signed with the debug keystore."
fi

# ── 4. Analyze + tests ───────────────────────
info "Running flutter analyze..."
if ! flutter analyze; then
    warn "flutter analyze found issues — continuing anyway."
fi
success "Analyze done."

info "Running tests..."
if ! flutter test; then
    warn "Some tests failed — continuing anyway."
else
    success "Tests passed."
fi

# ── 5. Build ──────────────────────────────────
BUILD_START=$(date +%s)
info "Building ${BUILD_TYPE} APK..."
run flutter build apk "--${BUILD_TYPE}"
BUILD_END=$(date +%s)
BUILD_TIME=$(( BUILD_END - BUILD_START ))
success "Build complete in ${BUILD_TIME}s."

# ── 6. APK sanity check ──────────────────────
APK_PATH="$PROJECT_DIR/build/app/outputs/flutter-apk/app-${BUILD_TYPE}.apk"
[[ -f "$APK_PATH" ]] || die "APK not found at expected path: $APK_PATH"
APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
success "APK ready — size: $APK_SIZE  →  $APK_PATH"

# ── 7. Install ───────────────────────────────
info "Installing APK on device..."
if ! run "${ADB[@]}" install -r "$APK_PATH"; then
    warn "Install failed — likely a debug↔release signature mismatch."
    warn "Uninstalling old build (app data will be reset) and retrying..."
    run "${ADB[@]}" uninstall "$APP_PACKAGE" || true
    run "${ADB[@]}" install "$APK_PATH"
fi
success "APK installed."

# ── 8. Launch ────────────────────────────────
info "Launching $APP_PACKAGE..."
run "${ADB[@]}" shell monkey -p "$APP_PACKAGE" -c android.intent.category.LAUNCHER 1
success "App launched!"

echo ""
echo -e "${BOLD}${GREEN}✓ Build → Install → Launch complete!${RESET}"
echo -e "  Package : ${CYAN}$APP_PACKAGE${RESET}"
echo -e "  APK     : ${CYAN}$APK_PATH${RESET} (${APK_SIZE})"
echo -e "  Time    : ${CYAN}${BUILD_TIME}s${RESET}"
