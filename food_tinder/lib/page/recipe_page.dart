import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/recipe_view.dart';

class RecipePage extends StatelessWidget{
  Food food;

  RecipePage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe for " + food.name)
      ),
      body: ListView(
        children: <Widget>[RecipeView(food.recipe)],
      ),
    );
  }

}