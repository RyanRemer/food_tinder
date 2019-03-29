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
        title: Row(
            children: [
              Image.asset("assets/logo.png", height:24, width:24),
              Padding(
                  child: Text("Grocery List"),
                  padding: EdgeInsets.only(left:7)
              )
            ]
        ),
      ),
    );
  }

}