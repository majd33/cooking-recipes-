import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:cooking_reciepes/MyScreens/category_screen.dart';
import 'package:cooking_reciepes/MyScreens/fav_screen.dart';
import 'package:cooking_reciepes/MyScreens/filter_screen.dart';
import 'package:cooking_reciepes/MyScreens/meal_details_screen.dart';
import 'package:cooking_reciepes/MyScreens/tabs_screen.dart';
import 'MyScreens/category_meals_screen.dart';
import 'allmeals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

/*  Map<String,bool> _filter={
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
};

 void _setFilters(Map<String,bool> _filterData){
   setState(() {
     _filter=_filterData;
   });
 }*/


  List<mymeals> _favMeals= [];
  void MyFav(String mealId){
    final index =_favMeals.indexWhere((element) => element.id==mealId);
    if(index>=0)
      setState(() {
        _favMeals.removeAt(index);
      });
    else
      setState(() {
        _favMeals.add(meal_detiles.firstWhere((element) => element.id==mealId));
      });

  }

  bool isFav(String id)
  {
    return _favMeals.any((element) => element.id==id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Meals',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.deepOrangeAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            body2: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w500),
            title: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Raleway',
              fontSize: 18,
            ),
          )),
      //home: tabsScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => tabsScreen(_favMeals),
        CategoryMealsScreen.routename: (context) => CategoryMealsScreen(),
        mealDetailsScreen.routeName: (context) => mealDetailsScreen(MyFav, isFav),
        //favScreen.routeName: (context) => favScreen(),
        filterScreen.routeName:(context)=>filterScreen(),
      },
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:null,
      );

  }
}*/
