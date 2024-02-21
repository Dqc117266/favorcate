import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  final CategoryModel _category;
  HomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;

    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          _category.title!,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        decoration: BoxDecoration(
            color: _category.cColor,
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [
              bgColor!.withOpacity(.5),
              bgColor!,
            ])),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(MealScreen.routeName, arguments: _category);
      },
    );
  }
}