
import 'package:favorcate/core/services/json_parse.dart';

import 'base_view_model.dart';

class MealViewModel extends BaseMealViewModel {

  MealViewModel() {
    JsonParse.getMealModelData().then((value) {
      meals = value;
    });
  }
}