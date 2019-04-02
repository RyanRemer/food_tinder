import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/single_recipe_page.dart';
import 'package:food_tinder/view/food_image_view.dart';

class DescFoodView extends StatefulWidget {
  Food food;

  DescFoodView(this.food);

  @override
  State<StatefulWidget> createState() {
    return DescFoodViewState(this.food);
  }
}

class DescFoodViewState extends State<DescFoodView> {
  Food food;
  bool showImage;

  DescFoodViewState(this.food) {
    this.showImage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          showImage ? _buildImage() : Container(),
          _buildTitle(context),
//          !showImage ? _buildRecipe() : Container(),
          _buildBottom(context),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: FoodImageView(food.photoUrl),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            food.name,
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text(_getSubtitle()),
          trailing: IconButton(
              splashColor: Theme.of(context).accentColor,
              icon: Icon(Icons.subject),
              onPressed: () {
                _onTitleTap(context);
              }),
        ));
  }

  String _getSubtitle() {
    var subtitle = "";
    for (var tag in food.tags) {
      subtitle += tag.toString() + " ";
    }
    return subtitle;
  }

  Widget _buildBottom(BuildContext context) {
    var padding = 16.0;
    return Container(
      padding: EdgeInsets.only(left: padding, right: padding, bottom: padding),
      child: Text(food.recipe.description),
    );
  }

  void _onTitleTap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SingleRecipePage(food)));
  }
}
