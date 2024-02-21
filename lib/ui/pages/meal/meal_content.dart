import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/meal_item.dart';

class MealContent extends StatelessWidget {
  const MealContent({super.key});

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;
    return Selector<MealViewModel, List<MealModel>>(
      selector: (context, mealVM) => mealVM.meals
          .where((element) => element.categories!.contains(category.id))
          .toList(),
      shouldRebuild: (prev, next) => !listEquals(prev, next),
      builder: (context, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return MealItem(meals[index]);
          },
        );
      },
    );
    // return const Placeholder();
  }
}



// class MealContent extends StatelessWidget {
//   const MealContent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final category =
//         ModalRoute.of(context)!.settings.arguments as CategoryModel;
//     return Consumer<MealViewModel>(
//       builder: (context, mealVM, child) {
//         final meals = mealVM.meals
//             .where((element) => element.categories!.contains(category.id)).toList();
//
//         return ListView.builder(
//           itemCount: meals.length,
//           itemBuilder: (context, index) {
//             return ListTile(title: Text(meals[index].title!),);
//           },
//         );
//       },
//     );
//   }
// }
