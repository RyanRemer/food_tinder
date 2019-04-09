import 'package:flutter/material.dart';
import 'package:food_tinder/model/recipe.dart';
import 'package:food_tinder/view/ingredient_view.dart';

class RecipeView extends StatelessWidget {
  Recipe recipe;

  RecipeView(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
        _buildBody(context),
    );
  }

  List<Widget> _buildBody(BuildContext context) {
    List<Widget> bodyWidgets = List<Widget>();

    _addRecipeDescription(bodyWidgets, context);
    bodyWidgets.add(const Divider());
    _addRecipeIngredients(bodyWidgets, context);
    bodyWidgets.add(const Divider());
    _addRecipeDirections(bodyWidgets, context);
    bodyWidgets.add(const Divider());

    return bodyWidgets;
  }

  void _addRecipeDirections(List<Widget> bodyWidgets, BuildContext context) {
    _addSectionTitle(bodyWidgets, "Directions", context);

    for (int i = 0; i < recipe.directions.length; i++) {
      bodyWidgets.add(
          ListTile(title: Text((i + 1).toString() + ". ${recipe.directions[i]}")));
    }
  }

  void _addRecipeIngredients(List<Widget> bodyWidgets, BuildContext context) {
    _addSectionTitle(bodyWidgets, "Ingredients", context);

    for (var ingredient in recipe.ingredients) {
      bodyWidgets.add(IngredientView(ingredient));
    }
  }

  void _addRecipeDescription(List<Widget> bodyWidgets, BuildContext context) {
    _addSectionTitle(bodyWidgets, "Description", context);

    bodyWidgets.add(ListTile(title: Text(recipe.description)));
  }

  void _addSectionTitle(
      List<Widget> bodyWidgets, String text, BuildContext context) {
    bodyWidgets.add(ListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    ));
  }
}
