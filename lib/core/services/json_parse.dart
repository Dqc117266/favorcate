
import 'dart:convert';

import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/services.dart';

class JsonParse {

  static Future<List<T>> fetchData<T>(String jsonPath, String listName, T Function(Map<String, dynamic>) fromJson) async {
    final jsonString = await rootBundle.loadString(jsonPath);
    final result = json.decode(jsonString);

    var resultList = result[listName];
    List<T> data = [];

    for (var json in resultList) {
      data.add(fromJson(json));
    }

    return data;
  }

  static Future<List<CategoryModel>> getCategoryData() async {
    return fetchData("assets/json/category.json", "category", (json) => CategoryModel.fromJson(json));
  }

  static Future<List<MealModel>> getMealModelData() async {
    return fetchData("assets/json/meal.json", "meal", (json) => MealModel.fromJson(json));
  }
  
}