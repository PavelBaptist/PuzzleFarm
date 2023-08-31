import 'package:flutter/material.dart';
import 'package:puzzle_game/ui/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
