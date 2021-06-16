import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:cooking_reciepes/MyWidgets/Main_Drawer.dart';
import 'package:cooking_reciepes/MyWidgets/meals_items.dart';

class favScreen extends StatefulWidget {
  //static const routeName='fav';
  final List<mymeals> _favMeals;
  const favScreen(this._favMeals);

  @override
  _favScreenState createState() => _favScreenState();
}

class _favScreenState extends State<favScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Favoriate", style: Theme.of(context).textTheme.title,),),
      body: widget._favMeals.isEmpty?Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:[ Text("You Have no favoriates yet", style: Theme.of(context).textTheme.body2,),
              Text("start adding some!", style: Theme.of(context).textTheme.body2)]),
      ): ListView.builder(
        itemBuilder: (mycontxt, index) {
          return mealsItems(
              myId: widget._favMeals[index].id,
              myimage: widget._favMeals[index].imageURL,
              title: widget._favMeals[index].title,
              duration: widget._favMeals[index].duration,
              complexity: widget._favMeals[index].complexity,
              affordability: widget._favMeals[index].affordability);
        },
        itemCount: widget._favMeals.length,
      ),
      drawer: MainDrawer(),
    );
  }
}
