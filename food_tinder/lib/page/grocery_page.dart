import 'package:flutter/material.dart';
import 'package:food_tinder/controller/grocery_controller.dart';
import 'package:food_tinder/model/grocery_item.dart';
import 'package:food_tinder/model/ingredient.dart';

class GroceryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GroceryPageState();
  }
}

class GroceryPageState extends State<GroceryPage> {
  GroceryController _groceryController = GroceryController();
  Set<Ingredient> checkedIngredients = Set<Ingredient>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset("assets/logo.png", height: 24, width: 24),
          Padding(
              child: Text("Grocery List"), padding: EdgeInsets.only(left: 7))
        ]),
      ),
      body: Container(
          color: Colors.grey[200],
          child: _groceryController.getGroceryFood().length == 0
              ? Center(
                  child: Text("No Recipes on Grocery List"),
                )
              : _buildGroceryList(context)),
    );
  }

  Widget _buildGroceryList(BuildContext context) {
    this.checkedIngredients = _groceryController.getCheckedIngredients();
    var groceryItems = List<GroceryItem>();

    for (var food in _groceryController.getGroceryFood()) {
      for (var ingredient in food.recipe.ingredients) {
        groceryItems.add(GroceryItem(food, ingredient));
      }
    }

    groceryItems.sort((a, b) {
      var nameA = a.ingredient.name.toLowerCase();
      var nameB = b.ingredient.name.toLowerCase();

      return nameA.compareTo(nameB);
    });

    return ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, i) =>
            _buildGroceryItem(context, groceryItems[i]));
  }

  Widget _buildGroceryItem(BuildContext context, GroceryItem groceryItem) {
    var food = groceryItem.food;
    var ingredient = groceryItem.ingredient;

    return ListTile(
      title: Text(ingredient.toString(),
          style: checkedIngredients.contains(ingredient)
              ? TextStyle(
                  decoration: TextDecoration.lineThrough, color: Colors.grey)
              : TextStyle()),
      subtitle: Text(food.name),
      trailing: Checkbox(
          value: checkedIngredients.contains(ingredient),
          onChanged: (value) => setState(() {
                _groceryController.setIngredientState(ingredient, value);
              })),
    );
  }
}
