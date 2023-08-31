import 'package:flutter/material.dart';

import '../widgets/game_level_widget/game_level_widget.dart';
import '../widgets/main_menu_widget/main_menu_widget.dart';

abstract class MainNavigationRouteNames {
  static const mainMenu = 'main_menu';
  static const menuGameWidget = 'main_menu/game_widget';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.mainMenu;

  final routes = {
    MainNavigationRouteNames.mainMenu: (context) => const MainMenu(),
  };

// Если путь не будет найдет, то будет использоваться этот метод
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.menuGameWidget:
        final index = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => GameLevelWidget(index: index),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
