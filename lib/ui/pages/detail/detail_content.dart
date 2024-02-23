import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  final MealModel _meal;

  DetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBannerImage(),
          buildMakeTitle(context, "制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context, "制作步骤"),
          buildMakeSteps(context),
        ],
      ),
    );
  }

  Widget buildBannerImage() {
    return Container(width: double.infinity, child: Image.network(_meal.imageUrl!));
  }

  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContent(
      context,
      ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _meal.ingredients!.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(_meal.ingredients![index]),
            ),
          );
        },
      ),
    );
  }

  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContent(
      context,
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("${index + 1}"),
            ),
            title: Text(_meal.steps![index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: _meal.steps!.length,
      ),
    );
  }

  //公共方法
  Widget buildMakeTitle(context, title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildMakeContent(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width - 30,
      child: child,
    );
  }
}
