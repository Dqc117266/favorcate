
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:flutter/cupertino.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];

  List<MealModel> get meals {
    return _meals;
  }

  MealViewModel() {
    JsonParse.getMealModelData().then((value) {
      _meals = value;
      notifyListeners();
    });
  }
}