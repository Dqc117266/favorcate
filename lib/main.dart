import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MealViewModel(),
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
