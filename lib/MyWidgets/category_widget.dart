import 'package:flutter/material.dart';
import '../MyScreens/category_meals_screen.dart';
class categoryWidget extends StatelessWidget {

  final String id;
  final String title;
  final Color color;

  const categoryWidget({
    @required this.id,
    @required this.title,
    @required this.color,
  });
  void selectCategory(BuildContext mycontext){
    Navigator.of(mycontext).pushNamed(CategoryMealsScreen.routename,
        arguments: {'id': id, 'title': title});
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){selectCategory(context);},
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
