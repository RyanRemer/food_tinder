import 'package:flutter/material.dart';
import 'package:food_tinder/controller/food_controller.dart';
import 'package:food_tinder/controller/grocery_controller.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/single_recipe_page.dart';
import 'package:food_tinder/view/min_food_view.dart';

class WeeklyListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipesPage();
  }
}

class RecipesPage extends State<WeeklyListPage> {
  List<Food> _weeklyFood;
  FoodController foodController = FoodController();
  GroceryController _groceryController = GroceryController();

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
        context, MaterialPageRoute(builder: (context) => SingleRecipePage(food)));
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
                  (_groceryController.getGroceryFood().contains(food))
                      ? IconButton(
                          icon: Icon(Icons.remove_shopping_cart),
                          tooltip: "Remove from Grocery List",
                          onPressed: () => removeIngredients(food),
                        )
                      : IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          tooltip: "Add to Grocery List",
                          onPressed: () => addIngredients(food),
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


  void addIngredients(Food food) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Added ${food.name} ingredients to Grocery List"),
    ));
    setState(() {
      this._groceryController.addGroceryFood(food);
    });
  }

  void removeIngredients(Food food) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Removed ${food.name} ingredients to Grocery List"),
    ));

    setState(() {
      this._groceryController.removeGroceryFood(food);
    });
  }
}
