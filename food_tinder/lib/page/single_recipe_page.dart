import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_image_view.dart';
import 'package:food_tinder/view/recipe_view.dart';

class SingleRecipePage extends StatelessWidget{
  Food food;

  SingleRecipePage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe for " + food.name)
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: FoodImageView(food.photoUrl),
          ),
          RecipeView(food.recipe)],
      ),
    );
  }

}