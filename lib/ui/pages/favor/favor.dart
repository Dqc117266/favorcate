import 'package:favorcate/ui/pages/favor/favor_content.dart';
import 'package:flutter/material.dart';

class FavorScreen extends StatelessWidget {
  const FavorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的收藏"),),
      body: FavorContent(),
    );
  }
}

