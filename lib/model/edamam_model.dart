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
  String source;
  String image;
  List<String> ingredients;

  EdamamRecipeModel({
    required this.title,
    required this.source,
    required this.image,
    required this.ingredients,
  });

  // Method to convert a Map to a RecipeModel
  factory EdamamRecipeModel.fromMap(Map<String, dynamic> map) {
    return EdamamRecipeModel(
      title: map['recipe']['label'],
      source: map['recipe']['source'],
      image: map['recipe']['image'],
      ingredients: List<String>.from(map['recipe']['ingredients'].map((ingredient) => ingredient['text'])),
    );
  }
}