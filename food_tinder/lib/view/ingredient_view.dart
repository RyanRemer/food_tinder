import 'package:flutter/material.dart';
import 'package:food_tinder/model/ingredient.dart';

class IngredientView extends StatelessWidget {
  Ingredient ingredient;

  IngredientView(this.ingredient);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8, left: 16),
      child: Text(ingredient.toString())
    );
  }
}
