import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(
      builder: (context, favorVM, child) {
        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (context, index) {
            return MealItem(favorVM.favorMeals[index]);
          },
        );
      },
    );
  }
}
