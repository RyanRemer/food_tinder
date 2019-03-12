import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
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
        body: ListView.builder(
            itemCount: _weeklyFood.length,
            itemBuilder: (context, i) {
              var food = _weeklyFood[i];
              return Card(
                child: ExpansionTile(
                  title: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        food.name,
                        style: TextStyle(fontSize: 20),
                      )),
                  children: <Widget>[RecipeView(food.recipe)],
                ),
              );
            }));
  }
}
