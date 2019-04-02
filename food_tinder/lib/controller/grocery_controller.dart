import 'package:food_tinder/model/client_model.dart';
import 'package:food_tinder/model/food.dart';

class GroceryController {
  ClientModel _clientModel = ClientModel.getInstance();

  List<Food> getGroceryFood(){
    return _clientModel.groceryFood;
  }

  void removeGroceryFood(Food food){
    _clientModel.groceryFood.remove(food);
  }

  void addGroceryFood(Food food){
   _clientModel.groceryFood.add(food);
  }
}