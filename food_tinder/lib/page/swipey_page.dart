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
  List<Food> _uncheckedFoods;
  FoodController _foodController;
  Food _currentFood;

  SwipeyPageState(){
    _foodController = FoodController();
    _uncheckedFoods = _foodController.getUncheckedFoods();
    _currentFood = _uncheckedFoods.last;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Tinder"),
      ),
      body: FoodView(_currentFood,
      onSwipeLeft: onFoodSwipeLeft,
        onSwipeRight: onFoodSwipeRight,
      )
    );
  }

  void onFoodSwipeLeft(){
    setState(() {
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

  void onFoodSwipeRight(){
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

}