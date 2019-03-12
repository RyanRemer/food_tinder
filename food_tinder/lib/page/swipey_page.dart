import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_view.dart';

class SwipeyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SwipeyPageState();
  }

}

class SwipeyPageState extends State<SwipeyPage>{
  FoodController _foodController;
  Food _currentFood;

  @override
  Widget build(BuildContext context) {
    _foodController = FoodController();
    _currentFood = _foodController.getUncheckedFoods().first;
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Tinder"),
      ),
      body: FoodView(_currentFood)
    );
  }

}