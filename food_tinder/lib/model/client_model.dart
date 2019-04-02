import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/ingredient.dart';
import 'package:food_tinder/model/mock_data.dart';

class ClientModel {
  static ClientModel singleton = ClientModel();
  static ClientModel getInstance() {
    return singleton;
  }

  List<Food> uncheckedFoods;
  List<Food> likedFood;
  List<Food> groceryFood;
  Set<Ingredient> checkedIngredients;

  ClientModel() {
    uncheckedFoods = MockData().foods;
    likedFood = List<Food>();
    groceryFood = List<Food>();
    checkedIngredients = Set<Ingredient>();
  }
}
