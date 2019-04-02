import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/mock_data.dart';

class ClientModel {
  static ClientModel singleton = ClientModel();
  static ClientModel getInstance() {
    return singleton;
  }

  List<Food> uncheckedFoods;
  List<Food> weeklyFood;
  List<Food> groceryFood;

  ClientModel() {
    uncheckedFoods = MockData().foods;
    weeklyFood = List<Food>();
    groceryFood = List<Food>();
  }
}
