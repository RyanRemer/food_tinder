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
              onPressed: () => goToWeeklyList(context),
            ),
            IconButton(
              icon: Icon(Icons.help),
              tooltip: "Help",
              onPressed: () => showHelp(context),
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

  void goToWeeklyList(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WeeklyListPage()));
  }

  void showHelp(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Info"),
              content: Text(
                  "This app was made to help you plan your meals for the weak. It is called Food Tinder, because it's like Tinder, but for food! Swipe right to add a recipe to your week, swipe left to reject the recipe, and tap the list icon to view your recipes for the week."),
            ));
  }

  Widget _buildFoodStack(BuildContext context) {
    _currentFood = _uncheckedFoods.last;

    List<Widget> stackWidgets = [
      Center(
        child: Text("No food left to explore!"),
      )
    ];

    if (_uncheckedFoods.length > 0) {
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
          child: Container(
              color: Colors.white,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    );
  }

  void rejectFood() {
    setState(() {
      _uncheckedFoods.insert(0, _currentFood);
      _uncheckedFoods.removeLast();
    });
  }

  void acceptFood() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Added ${_currentFood.name} To Week"),
      duration: Duration(seconds: 1),
    ));

    setState(() {
      _foodController.moveToWeeklyFood(_currentFood);
    });
  }
}
