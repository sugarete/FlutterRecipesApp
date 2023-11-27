import 'package:flutter/material.dart';
import 'package:myrecipes/Screens/home.dart';
// import 'package:provider/provider.dart';
// import 'package:myrecipes/data_repo/dbhelper.dart';
// import 'package:myrecipes/model/recipe_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await DbHelper.instance.initDatabase();
  // for (var recipes in RecipeModel.iniRecipes) {
  //   await DbHelper.instance.insertInitialRecipes(recipes);
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const InitApp();
  }
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
