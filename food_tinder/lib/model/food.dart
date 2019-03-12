import 'dart:io';

import 'package:food_tinder/model/recipe.dart';

class Food {
  String name;
  String photoUrl;
  List<String> tags;
  Recipe recipe;

  Food(this.name, this.photoUrl, this.tags, this.recipe);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Food &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              photoUrl == other.photoUrl &&
              tags == other.tags &&
              recipe == other.recipe;

  @override
  int get hashCode =>
      name.hashCode ^
      photoUrl.hashCode ^
      tags.hashCode ^
      recipe.hashCode;




}