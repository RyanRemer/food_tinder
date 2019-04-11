import 'package:flutter/material.dart';
import 'package:food_tinder/controller/grocery_controller.dart';
import 'package:food_tinder/model/grocery_item.dart';

class GroceryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GroceryPageState();
  }
}

class GroceryPageState extends State<GroceryPage> {
  GroceryController _groceryController = GroceryController();

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
          child: _groceryController.getGroceryList().length == 0
              ? Center(
                  child: Text("No Items on Grocery List"),
                )
              : _buildGroceryList(context)),
    );
  }

  Widget _buildGroceryList(BuildContext context) {
    var groceryItems = _groceryController.getGroceryList();

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

    return Container(
      color: Colors.white,
      child: Dismissible(
        key: ObjectKey(groceryItem),
        onDismissed: (direction){
          setState(() {
            _groceryController.removeGroceryItem(groceryItem);
          });
        },
        child: ListTile(
          title: Text(ingredient.toString(),
              style: groceryItem.checked
                  ? TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey)
                  : TextStyle()),
          subtitle: Text(food.name),
          trailing: Checkbox(
            value: groceryItem.checked,
            onChanged: (value) => setState(() {
                  _groceryController.setGroceryItemChecked(groceryItem, value);
                }),
          ),
        ),
      ),
    );
  }
}
