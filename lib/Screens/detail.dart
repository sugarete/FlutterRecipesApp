import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:myrecipes/model/recipe_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:myrecipes/Screens/detailelem.dart';

class RecipeDetail extends StatefulWidget {
  final RecipeModel recipeModel;
  const RecipeDetail({super.key, required this.recipeModel});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          minHeight: size.height / 2,
          maxHeight: size.height / 1.2,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          parallaxEnabled: true,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: widget.recipeModel.imgPath,
                    child: Image(
                      height: (size.height / 2) + 60,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.recipeModel.imgPath),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.recipeModel.favourite =
                            !widget.recipeModel.favourite;
                      });
                    },
                    child: Icon(
                      widget.recipeModel.favourite
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          panel: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(
                        0.3,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  widget.recipeModel.title,
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.monitor_heart,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("kcal"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.timer),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('${widget.recipeModel.cookingTime}\''),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      color: Colors.black,
                      height: 30,
                      width: 3,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.person),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("${widget.recipeModel.servings} Servings"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: false,
                          labelColor: Colors.black,
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 4.0,
                            ),
                          ),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              text: "Ingredients".toUpperCase(),
                            ),
                            Tab(
                              text: "Preparation".toUpperCase(),
                            ),
                            Tab(
                              text: "Cooking".toUpperCase(),
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Ingredients(recipeModel: widget.recipeModel),
                              Preparation(recipeModel: widget.recipeModel),
                              Cooking(recipeModel: widget.recipeModel,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
