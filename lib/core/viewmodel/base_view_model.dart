
import 'package:flutter/material.dart';

import '../model/meal_model.dart';
import 'filter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];
  FilterViewModel? _filterViewModel;

  List<MealModel> get meals {
    return _meals.where((meal) {
      if (_filterViewModel!.isGlutenFree && !meal.isGlutenFree!)
        return false;
      if (_filterViewModel!.isVegan && !meal.isVegan!)
        return false;
      if (_filterViewModel!.isVegetarian && !meal.isVegetarian!)
        return false;
      if (_filterViewModel!.isLactoseFree && !meal.isLactoseFree!)
        return false;

      return true;
    }).toList();
  }

  List<MealModel> get originMeals {
    return _meals;
  }

    set meals(List<MealModel> value) {
    _meals = value;
    notifyListeners();
  }

  void updateFilters(FilterViewModel filterViewModel) {
    _filterViewModel = filterViewModel;
  }
}