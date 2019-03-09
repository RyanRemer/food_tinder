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
}