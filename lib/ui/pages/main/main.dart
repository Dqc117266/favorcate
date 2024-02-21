import 'package:favorcate/ui/pages/main/initalize_items.dart';
import 'package:flutter/material.dart';

import '../../shared/app_theme.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: AppTheme.bodynormalFontSize,
        unselectedFontSize: AppTheme.bodynormalFontSize,
        currentIndex: _currentIndex,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
