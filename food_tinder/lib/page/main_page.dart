import 'package:flutter/material.dart';
import 'package:food_tinder/page/grocery_page.dart';
import 'package:food_tinder/page/swipey_page.dart';
import 'package:food_tinder/page/weekly_list_page.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }

}

class MainPageState extends State<MainPage>{
  int navigationIndex = 0;
  final navigationWidgets = <Widget>[
    SwipeyPage(),
    WeeklyListPage(),
    GroceryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationWidgets[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("Explore")),
            BottomNavigationBarItem(icon: Icon(Icons.subject), title: Text("Recipes")),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), title: Text("Grocery List")),
          ],
        currentIndex: navigationIndex,
        onTap: _onNavigate,
      ),
    );
  }

  void _onNavigate(int index){
    setState(() {
      navigationIndex = index;
    });
  }

}

