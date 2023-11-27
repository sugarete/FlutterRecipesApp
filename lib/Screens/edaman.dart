import 'package:flutter/material.dart';
import 'package:myrecipes/model/edamam_model.dart';
import 'package:myrecipes/Screens/detail.dart';

class EdamanPage extends StatefulWidget {
  const EdamanPage({super.key});

  @override
  State<EdamanPage> createState() => _EdamanPageState();
}

class _EdamanPageState extends State<EdamanPage> {
  final TextEditingController _searchController = TextEditingController();
  final EdamamApiService _apiService =
      EdamamApiService('bb937e3229ccafaaba075384dd76260e');
  List<EdamamRecipeModel> _searchResults = [];

  void _searchRecipes() async {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      final results = await _apiService.searchRecipes(query);
      setState(() {
        _searchResults =
            results.map((recipe) => EdamamRecipeModel.fromMap(recipe)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(labelText: 'Enter a recipe'),
              onSubmitted: (_) => _searchRecipes(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _searchRecipes,
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _searchResults.isNotEmpty
                  ? ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _searchResults.length,
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
                                builder: (context) => EdamamRecipeDetail(
                                  recipeModel: _searchResults[index],
                                ),
                              ),
                            ),
                            child: EdamamRecipeCard(
                              _searchResults[index],
                            ),
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text('No recipes found.'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class EdamamRecipeCard extends StatefulWidget {
  final EdamamRecipeModel recipeModel;
  const EdamamRecipeCard(this.recipeModel, {super.key});

  @override
  State<EdamamRecipeCard> createState() => _EdamamRecipeCardState();
}

class _EdamamRecipeCardState extends State<EdamamRecipeCard> {

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
                  tag: widget.recipeModel.image,
                  child: Image(
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.recipeModel.image),
                  ),
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
