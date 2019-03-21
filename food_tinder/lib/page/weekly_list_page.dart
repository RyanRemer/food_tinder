import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/min_food_view.dart';

class WeeklyListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeeklyListPageState();
  }
}

class WeeklyListPageState extends State<WeeklyListPage> {
  List<Food> _weeklyFood;

  @override
  Widget build(BuildContext context) {
    var foodController = FoodController();
    _weeklyFood = foodController.getWeeklyFood();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Food for the Week",
          ),
        ),
        body: Container(
          color: Colors.indigo[50],
          child: ListView(
            children: _buildBody(context),
          ),
        ));
  }

  List<Widget> _buildBody(BuildContext context) {
    List<Widget> bodyWidgets = List<Widget>();

    bodyWidgets.addAll(_weeklyFood
        .map((food) => Container(
            padding: EdgeInsets.all(16),
            height: 400.0,
            child: Card(
              child: MinFoodView(food),
            )))
        .toList());

    return bodyWidgets;
  }
}
