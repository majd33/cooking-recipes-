import 'package:cooking_reciepes/MyModuels/mycategory.dart';
import 'package:cooking_reciepes/MyModuels/mymeal.dart';
import 'package:flutter/material.dart';

const meal_category = const [
  mycategory(id: 'category1', title: 'Italian', color: Colors.deepOrangeAccent),
  mycategory(
      id: 'category2', title: 'Amerecan', color: Colors.deepOrangeAccent),
  mycategory(id: 'category3', title: 'Asian', color: Colors.deepOrangeAccent),
  mycategory(id: 'category4', title: 'Arabien', color: Colors.deepOrangeAccent),
];

const meal_detiles = const [
  mymeals(
      id: "Grilled Chicken",
      mycategory: ['category2'],
      title: "Grilled Chicken",
      imageURL: "https://www.savingdessert.com/wp-content/uploads/2016/03/Seasame-Ginger-Grilled-Chicken-2.jpg",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 30,
      complexity: Complexity.Challenging,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: false),

  mymeals(
      id: "Hot Dog",
      mycategory: ['category2'],
      title: "Hot Dog",
      imageURL: "https://potatorolls.com/wp-content/uploads/2020/10/Basic-Hot-Dogs2-960x640.jpg",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 10,
      complexity: Complexity.Simple,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: false),

  mymeals(
      id: "Burgar",
      mycategory: ['category2'],
      title: "Burgar",
      imageURL: "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 25,
      complexity: Complexity.Simple,
      affordability: Affordability.Pricey,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: false),

  mymeals(
      id: "Basta",
      mycategory: ['category1'],
      title: "Basta",
      imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7eRQ0vIN-G2OPWB-Yu7-3fpprYlM5prEPSw&usqp=CAU",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 15,
      complexity: Complexity.Simple,
      affordability: Affordability.Pricey,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: true),


  mymeals(
      id: "Pizza",
      mycategory: ['category1'],
      title: "Pizza",
      imageURL: "https://static.toiimg.com/photo/53110049.cms",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 25,
      complexity: Complexity.Challenging,
      affordability: Affordability.Luxurious,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: false),

  mymeals(
      id: "Spaghetti",
      mycategory: ['category1'],
      title: "Spaghetti",
      imageURL: "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/07/espagueti-rojo-receta-la-mejor.jpg",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 25,
      complexity: Complexity.Simple,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),

  mymeals(
      id: "Noodles",
      mycategory: ['category3'],
      title: "Noodles",
      imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZMDWeUqNMNP1TmOJQ5ePGHKgDQ1nbZ8jdviijXP7hL-SbSmdkzawea-XKXlH53BtLDZ0&usqp=CAU",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 35,
      complexity: Complexity.Simple,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),

  mymeals(
      id: "Sushi",
      mycategory: ['category3'],
      title: "Sushi",
      imageURL: "https://images.hindustantimes.com/rf/image_size_640x362/HT/p2/2016/06/03/Pictures/_2702b6e4-298e-11e6-a44e-cf92da887fb1.jpg",
      ingredients: ['4 eggs', '5 tomato', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 50,
      complexity: Complexity.Hard,
      affordability: Affordability.Luxurious,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: false),

  mymeals(
      id: "Yalanji",
      mycategory: ['category4'],
      title: "Yalanji",
      imageURL: "https://kitchen.sayidaty.net/uploads/small/5b/5bef8cc242193cf619a0b66670568db3_w750_h500.jpg",
      ingredients: ['rise', '5 tomato', 'lemon', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 50,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),

  mymeals(
      id: "Mansaf",
      mycategory: ['category4'],
      title: "Mansaf",
      imageURL: "https://www.fufuskitchen.com/wp-content/uploads/2019/07/FullSizeRender.jpg",
      ingredients: ['Rice', 'meat', '1 bread', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 40,
      complexity: Complexity.Simple,
      affordability: Affordability.Luxurious,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: true),

  mymeals(
      id: "Kabsa",
      mycategory: ['category4'],
      title: "Kabsa",
      imageURL: "https://www.thefooddictator.com/wp-content/uploads/2019/10/kabsa.jpg",
      ingredients: ['rice', '5 tomato', 'chicken'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 40,
      complexity: Complexity.Challenging,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),

  mymeals(
      id: "Kebeh",
      mycategory: ['category4'],
      title: "Kebeh",
      imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-v7Nm0Lpk8w7JpgPC2dAaUzpfIgZBuTtx-kiCpaeKXhJ8g5BQqL2_D6PGZVT60wjko6o&usqp=CAU",
      ingredients: ['burgul', 'onion', 'meat'],
      steps: ['step 1', 'step 2', 'step 3'],
      duration: 60,
      complexity: Complexity.Hard,
      affordability: Affordability.Luxurious,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),


];