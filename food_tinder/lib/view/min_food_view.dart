import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/recipe_page.dart';
import 'package:food_tinder/view/food_image_view.dart';

class MinFoodView extends StatelessWidget {
  Food food;
  List<Widget> actions;

  MinFoodView({@required this.food, this.actions}) {
    this.actions ??= List<Widget>();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: InkWell(
          child: FoodImageView(this.food.photoUrl),
          onTap: () => this._goToRecipePage(context),
        )),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: _buildTitleRow(context),
          ),
        )
      ],
    );
  }

  List<Widget> _buildTitleRow(BuildContext context) {
    var titleRowWidgets = <Widget>[
      Expanded(
        child: Center(
          child: Text(
            food.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    ];

    titleRowWidgets.addAll(actions);
    return titleRowWidgets;
  }

  void _goToRecipePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipePage(food)));
  }
}
