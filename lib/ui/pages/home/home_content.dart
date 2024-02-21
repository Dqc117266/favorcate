import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/ui/pages/home/home_category_item.dart';
import 'package:flutter/material.dart';

class HomeConetnt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // JsonParse.getMealModelData().then((value) {
    //   print(value[0].title);
    // });

    return FutureBuilder(
      future: JsonParse.getCategoryData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        final categories = snapshot.data;
        return GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: categories!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return HomeCategoryItem(categories[index]);
          },
        );
      },
    );
  }

}
//
// class _HomeConetntState extends State<HomeConetnt> {
//   List<CategoryModel> _categories = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     //加载数据
//     JsonParse.getCategoryData().then((res) {
//       setState(() {
//         _categories = res;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: EdgeInsets.all(20),
//       itemCount: _categories.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//         childAspectRatio: 1.5,
//       ),
//       itemBuilder: (context, index) {
//         return HomeCategoryItem(_categories[index]);
//       },
//     );
//   }
// }


