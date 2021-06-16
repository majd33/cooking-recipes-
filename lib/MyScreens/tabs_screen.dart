import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:cooking_reciepes/MyScreens/category_screen.dart';
import 'package:cooking_reciepes/MyScreens/fav_screen.dart';
import 'package:cooking_reciepes/MyWidgets/Main_Drawer.dart';

class tabsScreen extends StatefulWidget {

  final List<mymeals> _favMeals;

  const tabsScreen( this._favMeals);
  @override
  _tabsScreenState createState() => _tabsScreenState();
}

class _tabsScreenState extends State<tabsScreen> {

  List<Map<String, Object>> _tabs;
  int _selectTabIndex = 0;

  @override
  void initState() {
    _tabs =[
      {
        'tab' : CategoryScreen() ,
        'title' : 'Categories'
      },

      {
        'tab' : favScreen(widget._favMeals),
        'title' : 'Your Favorites'
      },
    ];
    super.initState();
  }

  void _selectTab(int value) {
    setState(() {
      _selectTabIndex=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(_tabs[_selectTabIndex]['title'], style: Theme.of(context).textTheme.title,),),
      body: _tabs[_selectTabIndex]['tab'],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.orange[200],
        selectedItemColor: Colors.white,
        currentIndex: _selectTabIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category) , title: Text("Category")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite) ,title: Text("Favorate") ),
        ],
        onTap: _selectTab,),
      drawer: MainDrawer(),
    );
  }

}
