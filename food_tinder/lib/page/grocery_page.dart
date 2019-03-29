import 'package:flutter/material.dart';

class GroceryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GroceryPageState();
  }

}

class GroceryPageState extends State<GroceryPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery List"),
      ),
    );
  }

}