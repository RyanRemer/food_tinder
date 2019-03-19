import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/weekly_list_page.dart';
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
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              tooltip: "Week List",
              onPressed: goToWeeklyList,
            ),
            IconButton(
              icon: Icon(Icons.help),
              tooltip: "Help",
              onPressed: () {},
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

  void goToWeeklyList() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WeeklyListPage()));
  }

  Widget _buildFoodStack(BuildContext context) {
    return Container(
      color: Colors.indigo[50],
      child: Stack(
        children:
        _uncheckedFoods.map((food) => _buildFoodItem(context, food)).toList(),
      ),
    );
  }

  Widget _buildFoodItem(BuildContext context, Food food) {
    return Dismissible(
      key: Key(food.photoUrl + Random().nextInt(1000).toString()),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          rejectFood();
        } else {
          acceptFood();
        }
      },
      child: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Card(
            child: FoodView(food),
          ),
        ),
      ),
    );
  }

  static const double ICON_SIZE = 30.0;

  Widget _buildActionRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          _buildActionButton(
      context,
            icon: Icon(Icons.remove),
            color: Colors.red,
            onPressed: rejectFood,
            labelText: "Reject",
          ),
          Spacer(),
          _buildActionButton(
            context,
            icon: Icon(Icons.clear),
            onPressed: killFood,
            labelText: "Never",
          ),
          Spacer(),
          _buildActionButton(
            context,
            icon: Icon(Icons.check),
            color: Colors.green,
            onPressed: acceptFood,
            labelText: "Accept",
          )
        ],
      ),
    );
  }

  Widget _buildActionButton( BuildContext context,
      {Icon icon, Color color, VoidCallback onPressed, String labelText}) {
    return RaisedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(labelText, style: Theme.of(context).textTheme.button),
      color: color,
    );
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
