import 'package:food_tinder/model/ingredient.dart';

class Recipe {
  int prepTime;
  int cookTime;
  String description;
  int servings;
  List<Ingredient> ingredients;
  List<String> directions;
  String recipeUrl;

  Recipe(this.description, this.ingredients, this.directions, this.servings,
      {this.prepTime, this.cookTime, this.recipeUrl}){
    this.prepTime ??= 0;
    this.cookTime ??= 0;
  }
}
