import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/ingredient.dart';

class GroceryItem {
  Food food;
  Ingredient ingredient;
  bool checked;

  GroceryItem(this.food, this.ingredient, {this.checked = false});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GroceryItem &&
              runtimeType == other.runtimeType &&
              food == other.food &&
              ingredient == other.ingredient;

  @override
  int get hashCode =>
      food.hashCode ^
      ingredient.hashCode;
}