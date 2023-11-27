import 'package:flutter/material.dart';
import 'package:myrecipes/model/recipe_model.dart';
import 'package:myrecipes/Screens/detail.dart';

class FavouritePage extends StatefulWidget {
  
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    List<RecipeModel> favoriteRecipes = RecipeModel.iniRecipes
        .where((recipe) => recipe.favourite)
        .toList();
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: favoriteRecipes.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetail(
                        recipeModel: favoriteRecipes[index],
                      ),
                    ),
                  ),
                  child: RecipeCard(
                    favoriteRecipes[index],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatefulWidget {
  final RecipeModel recipeModel;
  const RecipeCard(this.recipeModel, {super.key});

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Hero(
                  tag: widget.recipeModel.imgPath,
                  child: Image(
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.recipeModel.imgPath),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 40,
              child: InkWell(
                onTap: () {
                  setState(() {
                    widget.recipeModel.favourite = !widget.recipeModel.favourite;
                  });
                },
                child: Icon(
                  widget.recipeModel.favourite ? Icons.favorite : Icons.favorite_outline,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 33,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      widget.recipeModel.title.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
