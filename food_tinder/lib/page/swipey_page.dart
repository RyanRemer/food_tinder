import 'dart:math';

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
      body: Column(
        children: <Widget>[
          Expanded(child: _buildFoodStack()),
          _buildActionRow(),
        ],
      )
    );
  }

  void onFoodSwipeLeft(){
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
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

  Widget _buildFoodStack(){
   return _buildFoodItem(_currentFood);
  }

  Widget _buildFoodItem(Food food){
    return Dismissible(
      key: Key(food.photoUrl + Random().nextInt(1000).toString()),
      onDismissed: (direction){
        if (direction == DismissDirection.startToEnd){
          onFoodSwipeRight();
        } else {
          onFoodSwipeLeft();
        }
      },
      child: FoodView(food),
    );
  }

  Widget _buildActionRow(){
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.remove), onPressed: null),
        Spacer(),
        IconButton(icon: Icon(Icons.clear), onPressed: null),
        Spacer(),
        IconButton(icon: Icon(Icons.add), onPressed: null)
      ],
    );
  }

}