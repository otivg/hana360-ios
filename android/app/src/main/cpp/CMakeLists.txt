# SpatialDsp CMakeLists.txt
# 360 空间音效纯 DSP 模块 (移植自 Baseus audio_engine)
# 无 FFmpeg / 无 Oboe — 仅 DSP 内核, 由宿主 (Media3) 提供 PCM
cmake_minimum_required(VERSION 3.22.1)
project("spatial_dsp")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(DSP_DIR ${CMAKE_CURRENT_SOURCE_DIR}/spatial_dsp)

set(SPATIAL_DSP_SOURCES
    ${DSP_DIR}/src/spatial_dsp.cpp
    ${DSP_DIR}/src/jni_spatial_dsp.cpp
    ${DSP_DIR}/src/upmix.cpp
    ${DSP_DIR}/src/renderer.cpp
    ${DSP_DIR}/src/hrtf_synthesizer.cpp
    ${DSP_DIR}/src/cipic_hrir_v9.cpp
    ${DSP_DIR}/src/binaural_convolution.cpp
    ${DSP_DIR}/src/eq_filter.cpp
    ${DSP_DIR}/src/reverb.cpp
    ${DSP_DIR}/src/limiter.cpp
)

add_library(spatial_dsp SHARED ${SPATIAL_DSP_SOURCES})

target_include_directories(spatial_dsp PRIVATE
    ${DSP_DIR}/include
)

target_link_libraries(spatial_dsp android log)

target_compile_options(spatial_dsp PRIVATE
    -O2
    -fexceptions
    -frtti
    -Wall
    -Wno-unused-parameter
)
