import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/grocery_item.dart';
import 'package:food_tinder/model/mock_data.dart';

class ClientModel {
  static ClientModel singleton = ClientModel();
  static ClientModel getInstance() {
    return singleton;
  }

  List<Food> uncheckedFoods;
  List<Food> likedFood;
  List<Food> groceryFood;
  List<GroceryItem> groceryList;

  ClientModel() {
    uncheckedFoods = MockData().foods;
    likedFood = List<Food>();
    groceryFood = List<Food>();
    groceryList = List<GroceryItem>();
  }
}
