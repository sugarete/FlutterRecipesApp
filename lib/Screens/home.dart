import 'package:flutter/material.dart';
import 'package:myrecipes/Screens/favourite.dart';
import 'package:myrecipes/Screens/feature.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "My Recipes".toUpperCase(),
                      ),
                      Tab(
                        text: "Discovery".toUpperCase(),
                      ),
                      Tab(
                        text: "Favourite".toUpperCase(),
                      ),
                    ],
                    labelColor: Colors.black,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    unselectedLabelColor: Colors.grey,
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        FeaturePage(),
                        Text("Edaman API"),
                        FavouritePage(),                        // NewRecipe(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}
