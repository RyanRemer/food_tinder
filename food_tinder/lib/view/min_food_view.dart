import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/recipe_page.dart';
import 'package:food_tinder/view/food_image_view.dart';

class MinFoodView extends StatelessWidget {
  Food food;

  MinFoodView(this.food);

  Widget build(BuildContext context) {
    return GestureDetector(
        child: Column(
          children: <Widget>[
            Expanded(child: FoodImageView(this.food.photoUrl)),
            ListTile(
              title: Text(
                food.name,
                style: Theme.of(context).textTheme.title,
              ),
              trailing: IconButton(
                  icon: Icon(Icons.subject),
                  onPressed: () => _goToRecipePage(context)),
            )
          ],
        ),
        onTap: () => _goToRecipePage(context));
  }

  void _goToRecipePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipePage(food)));
  }
}
