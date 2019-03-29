import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/recipe_page.dart';
import 'package:food_tinder/view/min_food_view.dart';
import 'package:food_tinder/view/recipe_view.dart';

class WeeklyListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeeklyListPageState();
  }
}

class WeeklyListPageState extends State<WeeklyListPage> {
  List<Food> _weeklyFood;
  FoodController foodController = FoodController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    _weeklyFood = foodController.getWeeklyFood();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Row(children: [
            Image.asset("assets/logo.png", height: 24, width: 24),
            Padding(child: Text("Recipes"), padding: EdgeInsets.only(left: 7))
          ]),
        ),
        body: Container(
          color: Colors.grey[200],
          child: _weeklyFood.length > 0
              ? ListView(
                  children: _buildBody(context),
                )
              : Center(child: Text("No Recipes")),
        ));
  }

  void _goToRecipe(BuildContext context, Food food) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipePage(food)));
  }

  List<Widget> _buildBody(BuildContext context) {
    List<Widget> bodyWidgets = List<Widget>();

    bodyWidgets.addAll(_weeklyFood
        .map((food) => Container(
            padding: EdgeInsets.all(16),
            height: 400.0,
            child: Card(
              child: MinFoodView(
                food: food,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.subject),
                    tooltip: "View Recipe",
                    onPressed: () => this._goToRecipe(context, food),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    tooltip: "Add to Grocery List",
                    onPressed: null,
                  )
                ],
              ),
            )))
        .toList());

    bodyWidgets.add(Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    ));

    return bodyWidgets;
  }
}
