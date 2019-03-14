import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/food_image_view.dart';
import 'package:food_tinder/view/recipe_view.dart';

class FoodView extends StatefulWidget {
  Food food;

  FoodView(this.food);

  @override
  State<StatefulWidget> createState() {
    return FoodViewState(this.food);
  }
}

class FoodViewState extends State<FoodView> {
  Food food;
  bool showImage;

  FoodViewState(this.food) {
    this.showImage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          showImage ? _buildImage() : Container(),
          _buildTitle(context),
          !showImage ? _buildRecipe() : Container(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: FoodImageView(food.photoUrl),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
        child: ListTile(
            title: Text(
              food.name,
              style: Theme.of(context).textTheme.title,
            ),
            trailing:
                showImage ? Icon(Icons.expand_more) : Icon(Icons.expand_less),
            onTap: () {
              setState(() {
                showImage = !showImage;
              });
            }));
  }

  Widget _buildRecipe() {
    return Expanded(
      child: ListView(
        children: <Widget>[RecipeView(food.recipe)],
      ),
    );
  }
}
