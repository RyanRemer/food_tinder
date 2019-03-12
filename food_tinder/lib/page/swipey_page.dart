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
          title: Text(
            "Food Tinder",
            style: TextStyle(color: Colors.red),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              tooltip: "Week List",
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.help),
              tooltip: "Help",
              onPressed: (){},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildFoodStack(context)),
            _buildActionRow(context),
          ],
        ));
  }

  Widget _buildFoodStack(BuildContext context) {
    return Stack(
      children: _uncheckedFoods.map((food)=>_buildFoodItem(food)).toList(),
    );
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
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          _buildActionButton(
            icon: Icon(Icons.remove),
            color: Colors.redAccent,
            onPressed: rejectFood,
            label: Text("Not Now"),
          ),
          Spacer(),
          _buildActionButton(
            icon: Icon(Icons.clear),
            onPressed: killFood,
            label: Text("Never"),
          ),
          Spacer(),
          _buildActionButton(
            icon: Icon(Icons.add),
            color: Colors.green,
            onPressed: acceptFood,
            label: Text("This Week"),
          )
        ],
      ),
    );
  }

  Widget _buildActionButton({Icon icon, Color color, VoidCallback onPressed, Widget label}){
    return RaisedButton.icon(onPressed: onPressed, icon: icon, label: label, color: color,);
  }

  void rejectFood() {
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

  void killFood() {
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }

  void acceptFood() {
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }
}
