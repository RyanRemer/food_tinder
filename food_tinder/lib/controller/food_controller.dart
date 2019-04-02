import 'package:food_tinder/model/client_model.dart';
import 'package:food_tinder/model/food.dart';

class FoodController{
  ClientModel _clientModel;

  FoodController(){
    _clientModel = ClientModel.getInstance();
  }

  List<Food> getUncheckedFoods(){
    return _clientModel.uncheckedFoods;
  }

  List<Food> getLikedFood(){
    _clientModel.likedFood.sort((a,b)=> a.name.compareTo(b.name));
    return _clientModel.likedFood;
  }

  void addToLikedFood(Food food){
    _clientModel.uncheckedFoods.remove(food);
    _clientModel.likedFood.add(food);
  }

  void removeFromLikedFood(Food food){
    _clientModel.likedFood.remove(food);
    _clientModel.uncheckedFoods.add(food);
  }
}