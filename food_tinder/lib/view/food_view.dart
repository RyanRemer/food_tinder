import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';

class FoodView extends StatelessWidget{
  Food food;

  FoodView(this.food);

  @override
  Widget build(BuildContext context) {
    return Text(food.name);
  }

}