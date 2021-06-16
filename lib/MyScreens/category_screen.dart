import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyWidgets/Main_Drawer.dart';
import 'package:cooking_reciepes/MyWidgets/category_widget.dart';
import 'package:cooking_reciepes/allmeals.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category", style: Theme.of(context).textTheme.title,),),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: meal_category.map((category) {
          return categoryWidget(
              id: category.id, title: category.title, color: category.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
