import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_image_view.dart';
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

    bodyWidgets.add( Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "Meals for the Week",
        style: Theme.of(context).textTheme.display1,
      ),
    ));

    bodyWidgets.addAll(_weeklyFood
        .map((food) => Card(
              child: Container(
                child: ExpansionTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(100, 50)),
                    child: FoodImageView(food.photoUrl),
                  ),
                  title: Container(
                    padding: EdgeInsets.all(8),
                    child:
                    Text(food.name, style: Theme.of(context).textTheme.title),
                  ),
                  children: <Widget>[RecipeView(food.recipe)],
                ),
              )
            ))
        .toList());

    return bodyWidgets;
  }
}
