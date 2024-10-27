import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sliver_test/api/http.dart';
import 'package:flutter_sliver_test/pages/index/index.dart';

void main() async {
  // 确保 Flutter 框架在执行其他操作之前已完全初始化。它通常用于在你访问任何 Flutter 相关功能之前调用，尤其是在使用异步操作时。
  WidgetsFlutterBinding.ensureInitialized();
  // 设置应用程序的屏幕方向为只允许竖屏方向
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.white, // 设置状态栏背景为白色
      statusBarIconBrightness: Brightness.dark, // 设置状态栏图标颜色为深色（适合浅色背景）
      statusBarBrightness: Brightness.light, // 对 iOS 状态栏背景颜色的配置
    ),
  );
  Http.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markdown渲染',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
