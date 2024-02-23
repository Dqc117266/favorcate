import 'package:favorcate/ui/pages/home/homde_drawer.dart';
import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: HomeConetnt(),
      drawer: HomeDrawer(),
    );
  }
}
