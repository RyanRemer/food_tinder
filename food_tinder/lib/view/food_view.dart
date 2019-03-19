import 'package:flutter/material.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/page/recipe_page.dart';
import 'package:food_tinder/view/food_image_view.dart';
import 'package:food_tinder/view/recipe_view.dart';

class FoodView extends StatefulWidget {
  Food food;

  FoodView(this.food);

  @override
  State<StatefulWidget> createState() {
    return FoodViewState(this.food);
  }
}

class FoodViewState extends State<FoodView> {
  Food food;
  bool showImage;

  FoodViewState(this.food) {
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
              icon: Icon(Icons.info),
              onPressed: () {
                _onTitleTap(context);
              }),
//                showImage ? Icon(Icons.expand_more) : Icon(Icons.expand_less),
        ));
  }

  String _getSubtitle(){
    var subtitle = "";
    for (var tag in food.tags){
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

//    return Row(
//      children: food.tags.map((tag)=>Container(
//        padding: EdgeInsets.all(8.0),
//        child: Text(tag),
//      )).toList(),
//    );
  }

  void _onTitleTap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipePage(food)));

//    setState(() {
//      showImage = !showImage;
//    });
  }

  Widget _buildRecipe() {
    return Expanded(
      child: ListView(
        children: <Widget>[RecipeView(food.recipe)],
      ),
    );
  }
}
