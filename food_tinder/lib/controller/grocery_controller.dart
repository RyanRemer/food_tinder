import 'package:food_tinder/model/client_model.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/grocery_item.dart';

class GroceryController {
  ClientModel _clientModel = ClientModel.getInstance();

  List<Food> getGroceryFood(){
    return _clientModel.groceryFood;
  }

  List<GroceryItem> getGroceryList(){
    return _clientModel.groceryList;
  }

  void setGroceryItemChecked(GroceryItem groceryItem, bool value){
    groceryItem.checked = value;
  }

  void removeGroceryItem(GroceryItem groceryItem){
    _clientModel.groceryList.remove(groceryItem);
  }

  void removeGroceryFood(Food food){
    _clientModel.groceryFood.remove(food);
    food.recipe.ingredients.forEach((ingredient){
      _clientModel.groceryList.remove(GroceryItem(food, ingredient));
    });
  }

  void addGroceryFood(Food food){
   _clientModel.groceryFood.add(food);
     food.recipe.ingredients.forEach((ingredient){
       _clientModel.groceryList.add(GroceryItem(food, ingredient));
     });
  }
}