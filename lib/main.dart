import 'package:flutter/material.dart';
import 'package:panes/ui/_core/app_theme.dart';
import 'package:panes/ui/splash/splash_screen.dart';

void main() {
  runApp(const PanesApp());
}

class PanesApp extends StatefulWidget {
  const PanesApp({super.key});

  @override
  State<PanesApp> createState() => _PanesAppState();
}

class _PanesAppState extends State<PanesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}