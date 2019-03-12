import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/view/recipe_view.dart';

class FoodView extends StatelessWidget {
  Food food;
  VoidCallback onSwipeRight;
  VoidCallback onSwipeLeft;

  FoodView(this.food, {this.onSwipeLeft, this.onSwipeRight});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[_buildImage(), _buildTitle(context)],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          Center(child: CircularProgressIndicator(),),
          Dismissible(
            key: Key(food.photoUrl + Random().nextInt(10000).toString()),
            onDismissed: (direction){
              if (direction == DismissDirection.startToEnd && onSwipeRight != null){
                onSwipeRight();
              }
              else if (direction == DismissDirection.startToEnd && onSwipeLeft != null){
                onSwipeLeft();
              }
            },
            child:  Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(food.photoUrl)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return ExpansionTile(
      title: Text(
        food.name,
        style: Theme.of(context).textTheme.title,
      ),
      children: <Widget>[RecipeView(food.recipe)],
    );
  }
}
