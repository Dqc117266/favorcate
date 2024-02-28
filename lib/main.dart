import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FilterViewModel()),
        ChangeNotifierProxyProvider<FilterViewModel, MealViewModel>(create: (context) => MealViewModel(),
          update: (context, filterVM, mealVM) {
            mealVM!.updateFilters(filterVM);
            return mealVM;
          },
        ),
        // ChangeNotifierProvider(create: (context) => MealViewModel(),),
        ChangeNotifierProxyProvider<FilterViewModel, FavorViewModel>(create: (context) => FavorViewModel(),
          update: (context, filterVM, favorVM) {
            favorVM!.updateFilters(filterVM);
            return favorVM;
          },
        ),
        // ChangeNotifierProvider(create: (context) => FavorViewModel(),),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美食广场',
      //主题
      theme: AppTheme.norTheme,
      //路由
      initialRoute: MyRouter.initialRoute,
      routes: MyRouter.routers,
      onGenerateRoute: MyRouter.generateRoute,
      onUnknownRoute: MyRouter.unknownRoute,
    );
  }
}
