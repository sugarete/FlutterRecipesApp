import 'dart:convert';
import 'package:http/http.dart' as http;

class EdamamApiService {
  final String apiKey;
  final String apiUrl = 'https://api.edamam.com/api/recipes/v2';

  EdamamApiService(this.apiKey);

  Future<List<dynamic>> searchRecipes(String query) async {
    final response = await http.get(
      Uri.parse('$apiUrl?type=public&q=$query&app_id=b0eefc7c&app_key=$apiKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['hits'];
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}

class EdamamRecipeModel {
  String title;
  String image;
  int kcal;
  int servings;
  int cookingTime;
  String url;
  List<bool> takedingredients;
  List<String> ingredients;

  EdamamRecipeModel({
    required this.title,
    required this.image,
    required this.kcal,
    required this.servings,
    required this.cookingTime,
    required this.ingredients,
    required this.url,
  }) : takedingredients = List<bool>.filled(ingredients.length, false);

  // Method to convert a Map to a RecipeModel
  factory EdamamRecipeModel.fromMap(Map<String, dynamic> map) {
    return EdamamRecipeModel(
      title: map['recipe']['label'],
      image: map['recipe']['image'],
      kcal: map['recipe']['calories'].toInt(),
      servings: map['recipe']['yield'].toInt(),
      cookingTime: map['recipe']['totalTime'].toInt(),
      url: map['recipe']['url'],
      ingredients: List<String>.from(
          map['recipe']['ingredients'].map((ingredient) => ingredient['text'])),
    );
  }
}
