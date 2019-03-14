import 'package:flutter/material.dart';

class FoodImageView extends StatelessWidget {
  String foodImageUrl;
  double height;
  double width;

  FoodImageView(this.foodImageUrl, {this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.network(foodImageUrl, fit: BoxFit.cover);
  }
}
