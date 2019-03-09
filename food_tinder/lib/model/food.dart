import 'dart:io';

import 'package:food_tinder/model/recipe.dart';

class Food {
  String name;
  String photoUrl;
  List<String> tags;
  Recipe recipe;

  Food(this.name, this.photoUrl, this.tags, this.recipe);


}