import 'package:food_tinder/model/client_model.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/ingredient.dart';

class GroceryController {
  ClientModel _clientModel = ClientModel.getInstance();

  List<Food> getGroceryFood(){
    return _clientModel.groceryFood;
  }

  Set<Ingredient> getCheckedIngredients(){
    return _clientModel.checkedIngredients;
  }

  void setIngredientState(Ingredient ingredient, bool isChecked){
    if (isChecked){
      _clientModel.checkedIngredients.add(ingredient);
    } else {
      _clientModel.checkedIngredients.remove(ingredient);
    }
  }

  void removeGroceryFood(Food food){
    _clientModel.groceryFood.remove(food);
  }

  void addGroceryFood(Food food){
   _clientModel.groceryFood.add(food);
  }
}