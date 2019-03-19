import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_image_view.dart';
import 'package:food_tinder/view/food_view.dart';
import 'package:food_tinder/view/recipe_view.dart';

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
            "Food Tinder",
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: ListView(
          children: _buildBody(context),
        ));
  }

  List<Widget> _buildBody(BuildContext context) {
    List<Widget> bodyWidgets = List<Widget>();

    bodyWidgets.addAll(_weeklyFood
        .map((food) => Container(
            padding: EdgeInsets.only(bottom: 16),
            height: 400.0,
            child: Card(
              child: FoodView(food),
            )))
        .toList());

    return bodyWidgets;
  }
}
