import 'package:flutter/material.dart';
import 'package:cooking_reciepes/MyWidgets/Main_Drawer.dart';

class filterScreen extends StatefulWidget {
  static const routeName='filter';
  //final arg = ModalRoute.of(context).settings.arguments as Map<String, String>;
  /*final Function saveFilter;

  const filterScreen(this.saveFilter);*/

  @override
  _filterScreenState createState() => _filterScreenState();
}

class _filterScreenState extends State<filterScreen> {

  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan= false;
  bool _isVegetarian= false;

  @override
  didChangeDependencies(){
    final arg = ModalRoute.of(context).settings.arguments as Map<String, bool>;
    _isGlutenFree = arg['gluten'];
    _isLactoseFree = arg['lactose'];
    _isVegan= arg['vegan'];
    _isVegetarian= arg['vegetarian'];
  }

  Widget buildSwitchList(String text, String subText, bool currentValue , Function update){



    return SwitchListTile(
      title: Text(text, style: TextStyle(fontSize: 15),),
      value: currentValue,
      subtitle: Text(subText,style: TextStyle(fontSize: 10)),
      onChanged: update,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filter", style: Theme.of(context).textTheme.title,),
        actions: [IconButton(icon: Icon(Icons.done), onPressed: (){
          final Map<String,bool> _currentfilter={
            'gluten': _isGlutenFree,
            'lactose': _isLactoseFree,
            'vegetarian': _isVegetarian,
            'vegan': _isVegan,
          };
          Navigator.of(context).pop(_currentfilter);})],),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Adjust your meal selection", style: Theme.of(context).textTheme.body2,),
          ),
          Expanded(child: ListView(
            children: [
              buildSwitchList("Gluten-free", "Only include gluten-free meals", _isGlutenFree, (value){setState(() {
                _isGlutenFree=value;
              });}),
              buildSwitchList("Lactose-free", "Only include lactose-free meals", _isLactoseFree, (value){setState(() {
                _isLactoseFree=value;
              });}),
              buildSwitchList("Vegetarian", "Only include Vegetarian meals", _isVegetarian, (value){setState(() {
                _isVegetarian=value;
              });}),
              buildSwitchList("Vegan", "Only include vagen meals", _isVegan, (value){setState(() {
                _isVegan=value;
              });}),
            ],
          ))
        ],
      ),
      //drawer: MainDrawer(),
    );
  }
}
