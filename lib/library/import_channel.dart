import 'package:flutter/services.dart';

/// Dart side of the SAF music import (android/.../ImportChannel.kt).
///
/// MediaStore 不可用时 (鸿蒙 NEXT 兼容容器 / 受限系统) 的第二曲库来源:
/// 系统文件选择器选文件/文件夹, 持久授权后返回曲目元数据。
/// 返回 null 表示用户取消了选择器。
class ImportChannel {
  static const _method = MethodChannel('hanamimi/import');

  /// 多选音频文件。返回 [{uri,title,artist,album,durationMs,artPath}],
  /// 用户取消时为 null。
  static Future<List<Map<String, Object?>>?> pickFiles() async {
    final result = await _method.invokeListMethod<Map>('pickFiles');
    return _normalize(result);
  }

  /// 选整个文件夹, 递归扫描其中音频。返回结构与 [pickFiles] 相同。
  static Future<List<Map<String, Object?>>?> pickFolder() async {
    final result = await _method.invokeListMethod<Map>('pickFolder');
    return _normalize(result);
  }

  /// 释放某个导入曲目的持久授权 (从曲库移除时调用, 幂等)。
  static Future<void> release(String uri) async {
    try {
      await _method.invokeMethod('release', {'uri': uri});
    } catch (_) {
      // 授权释放失败无害 (系统会在应用数据清理时回收)
    }
  }

  /// 重新提取单个导入曲目的内嵌 (ID3) 封面。返回新的本地封面路径,
  /// 或 null (无内嵌封面/读取失败)。用于曲库首次加载的封面修复。
  static Future<String?> extractArtForFile(String uri) async {
    try {
      return await _method.invokeMethod<String>('extractArtForFile', {'uri': uri});
    } catch (_) {
      return null;
    }
  }

  static List<Map<String, Object?>>? _normalize(List<Map>? result) {
    if (result == null) return null;
    return [
      for (final m in result)
        m.map((k, v) => MapEntry(k as String, v as Object?)),
    ];
  }
}
