import 'package:food_tinder/model/ingredient.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/mock_data.dart';
import 'package:food_tinder/model/recipe.dart';

class ClientModel {
  static ClientModel singleton = ClientModel();
  static ClientModel getInstance() {
    return singleton;
  }

  List<Food> dislikedFood;
  List<Food> weeklyFood;
  List<Food> uncheckedFoods;

  ClientModel() {
    dislikedFood = List<Food>();
    uncheckedFoods = MockData().foods;
    weeklyFood = uncheckedFoods;
  }
}
