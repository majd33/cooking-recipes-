import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyScreens/fav_screen.dart';

class MainDrawer extends StatelessWidget {

  Widget builddrawerList(IconData myicon, String mytext , Function tabed) {
    return ListTile(
      leading: Icon(myicon, size: 25,),
      title: Text(mytext, style: TextStyle(fontSize: 15)),
      onTap: tabed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: 150,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(15),
            child: Text("My Meals App", style: TextStyle(fontSize: 25, fontFamily: 'Raleway',),),
          ),
          SizedBox(height: 20),
          builddrawerList(Icons.restaurant_menu, "All Meals",(){Navigator.of(context).pushReplacementNamed('/');}),
          builddrawerList(Icons.settings, "Settings",(){Navigator.of(context).pushReplacementNamed('/');}),
        ],
      ),
    );
  }

}
