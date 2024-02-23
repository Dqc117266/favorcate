
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailFloatingButton extends StatelessWidget {
  const DetailFloatingButton({
    super.key,
    required this.meal,
  });

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(
      builder: (context, favoerVM, child) {
        //判断是否收藏
        final iconData = favoerVM.isFavor(meal) ? Icons.favorite : Icons.favorite_border;
        final iconColor = favoerVM.isFavor(meal) ? Colors.red : Colors.black;

        return FloatingActionButton(
          onPressed: () {
            favoerVM.handleMeal(meal);
          },
          child: Icon(iconData, color: iconColor,),
        );
      },
    );
  }
}
