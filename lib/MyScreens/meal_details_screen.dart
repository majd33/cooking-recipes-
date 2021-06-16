import 'package:flutter/material.dart';
import 'package:cooking_reciepes/allmeals.dart';

class mealDetailsScreen extends StatelessWidget {
  static const routeName='meal_details';

  final Function myFav;
  final Function isFav;
  mealDetailsScreen(this.myFav, this.isFav);


  Widget buildSection(mycontext, text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(text, style: Theme.of(mycontext).textTheme.title,),
    );
  }

  Widget buildContainer(wid, heig, mycontext, child){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: heig,
      width: wid,
      child:child,
    );
  }

  @override
  Widget build(BuildContext context) {

    final String myMealId=ModalRoute.of(context).settings.arguments as String;
    final selected = meal_detiles.firstWhere((element) => element.id==myMealId);

    return Scaffold(
      appBar: AppBar(title: Text(myMealId, style: Theme.of(context).textTheme.title),
        actions: [IconButton(icon: Icon(isFav(myMealId)? Icons.favorite : Icons.favorite_border_outlined, size: 25,), onPressed: ()=>myFav(myMealId))],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              padding: EdgeInsets.all(10),
              child: Image.network(selected.imageURL, fit: BoxFit.fill,),
            ),
            buildSection(context, "Ingredients"),
            buildContainer(300.0, 180.0, context,  ListView.builder(itemBuilder: (mycontext, index)=>Card(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(selected.ingredients[index]),
              ),
            ),
              itemCount: selected.ingredients.length,
            )),
            buildSection(context, "Steps"),
            buildContainer(340.0, 200.0, context,  ListView.builder(itemBuilder: (mycontext, index)=>Column(
              children: [
                ListTile(
                  leading: CircleAvatar(child: Text("${index+1}"),),
                  title: Text(selected.steps[index]),
                ),
                Divider(),
              ],
            ),
              itemCount: selected.steps.length,
            ),)
          ],
        ),
      ),
    );
  }
}
