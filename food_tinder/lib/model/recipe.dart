import 'package:food_tinder/model/ingredient.dart';

class Recipe {
  int prepTime;
  int cookTime;
  String description;
  String tagline;
  int servings;
  List<Ingredient> ingredients;
  List<String> directions;
  String recipeUrl;

  Recipe(this.tagline, this.description, this.ingredients, this.directions, this.servings,
      this.prepTime, this.cookTime, this.recipeUrl){
  }
}
