import 'package:favorcate/ui/pages/detail/detail_screen.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static final String initialRoute = MainScreen.routeName;

  static final Map<String, WidgetBuilder> routers = {
    MainScreen.routeName: (conetxt) => MainScreen(),
    MealScreen.routeName: (conetxt) => MealScreen(),
    DetailScreen.routerName: (context) => DetailScreen(),
  };

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == FilterScreen.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return FilterScreen();
        },
        fullscreenDialog: true,
      );
    }

    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
