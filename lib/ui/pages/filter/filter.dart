import 'package:favorcate/ui/pages/filter/filter_content.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const String routeName = "/filter";

  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食过滤"),
      ),
      body: FilterContent(),
    );
  }


}
