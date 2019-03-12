import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_view.dart';

class SwipeyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwipeyPageState();
  }
}

class SwipeyPageState extends State<SwipeyPage> {
  List<Food> _uncheckedFoods;
  FoodController _foodController;
  Food _currentFood;

  SwipeyPageState() {
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
            Expanded(child: _buildFoodStack(context)),
            _buildActionRow(context),
          ],
        ));
  }

  Widget _buildFoodStack(BuildContext context) {
    return _buildFoodItem(_currentFood);
  }

  Widget _buildFoodItem(Food food) {
    return Dismissible(
      key: Key(food.photoUrl + Random().nextInt(1000).toString()),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          rejectFood();
        } else {
          acceptFood();
        }
      },
      child: FoodView(food),
    );
  }

  static const double ICON_SIZE = 30.0;

  Widget _buildActionRow(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          color: Colors.redAccent,
          onPressed: rejectFood,
          iconSize: ICON_SIZE,
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.clear),
          color: Colors.white,
          onPressed: killFood,
          iconSize: ICON_SIZE,
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.add),
          color: Colors.greenAccent,
          onPressed: acceptFood,
          iconSize: ICON_SIZE,
        )
      ],
    );
  }

  void rejectFood(){
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

  void killFood(){
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

  void acceptFood(){
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }
}
