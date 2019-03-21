import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/weekly_list_page.dart';
import 'package:food_tinder/view/desc_food_view.dart';

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

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  SwipeyPageState() {
    _foodController = FoodController();
    _uncheckedFoods = _foodController.getUncheckedFoods();
    _currentFood = _uncheckedFoods.last;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
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
        body: Container(
            color: Colors.indigo[50],
            child: Column(
              children: <Widget>[
                Expanded(child: _buildFoodStack(context)),
//                _buildActionRow(context),
              ],
            )));
  }

  void goToWeeklyList() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WeeklyListPage()));
  }

  Widget _buildFoodStack(BuildContext context) {
    List<Widget> stackWidgets = [
      Center(
        child: Text("No food left to explore!"),
      )
    ];

    if (_uncheckedFoods.length > 0){
      stackWidgets
          .addAll(_uncheckedFoods.map((food) => _buildFoodItem(context, food)));
    }

    return Stack(children: stackWidgets);
  }

  Widget _buildFoodItem(BuildContext context, Food food) {
    return Dismissible(
      key: Key(food.photoUrl + Random().nextInt(1000).toString()),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          acceptFood();
        } else if (direction == DismissDirection.endToStart) {
          rejectFood();
        }
      },
      child: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Card(
              child: Column(
            children: <Widget>[
              Expanded(
                child: DescFoodView(food),
              ),
              _buildActionRow(context)
            ],
          )),
        ),
      ),
    );
  }

  static const double ICON_SIZE = 30.0;

  Widget _buildActionRow(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildActionButton(
          context,
          icon: Icon(
            Icons.remove,
            color: Colors.white,
          ),
          color: Colors.red,
          onPressed: rejectFood,
          labelText: "Reject",
        ),
        _buildActionButton(
          context,
          icon: Icon(
            Icons.check,
            color: Colors.white,
          ),
          color: Colors.lightGreen,
          onPressed: acceptFood,
          labelText: "Accept",
        ),
      ],
    );
  }

  Widget _buildActionButton(BuildContext context,
      {Icon icon, Color color, VoidCallback onPressed, String labelText}) {
    return RaisedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        labelText,
        style: TextStyle(color: Colors.white),
      ),
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

  void acceptFood() {
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _scaffoldKey.currentState.showSnackBar(
          SnackBar(content: Text("Added ${_currentFood.name} To Week")));
      _uncheckedFoods.removeLast();
      _currentFood = _uncheckedFoods.last;
    });
  }
}
