

import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/ui/pages/detail/detail_content.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static final String routerName = "/detail";

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as MealModel;

    return Scaffold(
      appBar: AppBar(title: Text(meal.title!),),
      body: DetailContent(meal),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.favorite_border),
      ),
    );
  }
}
