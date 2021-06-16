import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:cooking_reciepes/MyScreens/meal_details_screen.dart';

class mealsItems extends StatelessWidget {
  final String myId;
  final String myimage;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const mealsItems(
      {@required this.myId,
        @required this.myimage,
        @required this.title,
        @required this.duration,
        @required this.complexity,
        @required this.affordability});

  String get complixityText {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "Unknown";
        break;
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Affordable:
        return "Affordable";
        break;
      default:
        return "Unknown";
        break;
    }
  }

  void selectMeal(BuildContext mycontext) {
    Navigator.of(mycontext)
        .pushNamed(mealDetailsScreen.routeName, arguments: myId);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    myimage,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 10,
                    child: Container(
                        color: Colors.black45,
                        padding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.body1,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 5),
                      Text(
                        "$duration min",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 5),
                      Text(
                        complixityText,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 5),
                      Text(
                        affordabilityText,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
