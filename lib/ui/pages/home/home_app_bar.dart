import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {

  // HomeAppBar(BuildContext context): super(
  //   title: Text("美食广场"),
  //   leading: Builder(
  //     builder: (context) {
  //       return IconButton(
  //         onPressed: () {
  //           Scaffold.of(context).openDrawer();
  //         },
  //         icon: Icon(Icons.build),
  //       );
  //     },
  //   ),
  // );

  HomeAppBar(BuildContext context): super(
    title: Text("美食广场"),
    leading: IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Icon(Icons.build),
    ),
  );

}
