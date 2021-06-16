import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:cooking_reciepes/MyScreens/filter_screen.dart';
import 'package:cooking_reciepes/MyWidgets/meals_items.dart';
import '../allmeals.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routename = 'CategoryMealsScreen';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<mymeals> categorymeals;
  List<mymeals> filterCategorymeals;

  @override
  void didChangeDependencies() {
    final arg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = arg['id'];
    categoryTitle = arg['title'];
    categorymeals = meal_detiles.where((element) {
      return element.mycategory.contains(categoryId);
    }).toList();
    filterCategorymeals=categorymeals;
    super.didChangeDependencies();
  }



  Map<String,bool> _filter={
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };

  void _filteredMeals(Map<String,bool> _filterData){
    setState(() {
      _filter=_filterData;
      print(_filter);
      //categorymeals.removeWhere((element){element.isGlutenFree==false && _filter['gluten'];});
      filterCategorymeals = categorymeals.where((element){
        if(element.isGlutenFree==false && _filter['gluten'])
          return false;
        if(element.isLactoseFree==false && _filter['lactose'])
          return false;
        if(element.isVegan==false && _filter['vegan'])
          return false;
        if(element.isVegetarian==false && _filter['vegetarian'])
          return false;
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {


    /*final arg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = arg['id'];
    categoryTitle = arg['title'];
    categorymeals = meal_detiles.where((element) {
      return element.mycategory.contains(categoryId);
    }).toList();*/



    /*@override
    void didChangeDependencies()
   {
     final arg = ModalRoute.of(context).settings.arguments as Map<String, String>;
     final categoryId = arg['id'];
     categoryTitle = arg['title'];
     categorymeals = meal_detiles.where((element) {
       return element.mycategory.contains(categoryId);
     }).toList();
      super.didChangeDependencies();
    }


    void filteredMeals(Map<String,bool> myValue){
     setState(() {
       categorymeals.where((element){
         if(element.isGlutenFree && !myValue['gluten'])
           return false;
         if(element.isLactoseFree && !myValue['lactose'])
           return false;
         if(element.isVegan && !myValue['vagen'])
           return false;
         if(element.isVegetarian && !myValue['vagetarian'])
           return false;
         return true;
       });
     });
    }*/
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
          style: Theme.of(context).textTheme.title,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.filter_alt, size: 25,),
              onPressed: () {
                Navigator.of(context).pushNamed(filterScreen.routeName, arguments: _filter).then((value){
                  if(value!=null)
                    _filteredMeals(value);});
              })
        ],
      ),
      body: filterCategorymeals.length>0? ListView.builder(
        itemBuilder: (mycontxt, index) {
          return mealsItems(
              myId: filterCategorymeals[index].id,
              myimage: filterCategorymeals[index].imageURL,
              title: filterCategorymeals[index].title,
              duration: filterCategorymeals[index].duration,
              complexity: filterCategorymeals[index].complexity,
              affordability: filterCategorymeals[index].affordability);
        },
        itemCount: filterCategorymeals.length,
      )
          :Center(child: Text("No meals", style: Theme.of(context).textTheme.body2,)),
    );
  }
}
