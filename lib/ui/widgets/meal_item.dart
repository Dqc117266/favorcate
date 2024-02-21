import 'package:favorcate/ui/pages/detail/detail_screen.dart';
import 'package:favorcate/ui/widgets/operation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/model/meal_model.dart';

class MealItem extends StatelessWidget {
  final cardRedius = 12.0;
  final MealModel _meal;

  MealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRedius),
        ),
        child: Column(
          children: [
            buildBasicInfo(context),
            buildOperationInfo(),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(DetailScreen.routerName, arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRedius),
            topRight: Radius.circular(cardRedius),
          ),
          child: Image.network(
            _meal.imageUrl!,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(_meal.title!, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          OperationItem(Icon(Icons.restaurant), "${_meal.complexStr}"),
          OperationItem(Icon(Icons.favorite), "未收藏"),
        ],
      ),
    );
  }
}
