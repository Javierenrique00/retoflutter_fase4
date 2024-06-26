import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:example/ui/navigation/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicLightThemeFoundation,
      darkTheme: basicDarkThemeFoundation,
      themeMode: ThemeMode.light,
      routes: appRoutes,
    );
  }
}

