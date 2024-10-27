import 'package:flutter/material.dart';

/// 是否为dark模式
bool isDark(BuildContext context) {
  final brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.dark;
}
