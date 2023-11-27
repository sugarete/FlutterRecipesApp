import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:myrecipes/model/recipe_model.dart';

class DbHelper {
  static Database? _database;
  static final DbHelper instance = DbHelper._privateConstructor();

  DbHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'recipes_database.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
  }

  Future<void> _createTables(Database db, int version) async {
    await db.execute('''
      CREATE TABLE recipes (
        id INTEGER PRIMARY KEY,
        title TEXT,
        favourite INTEGER,
        cookingTime INTEGER,
        servings INTEGER,
        imgPath TEXT,
        ingredients TEXT,
        takedingredients TEXT,
        preparation TEXT,
        cooking TEXT
      )
    ''');
  }

  Future<int> insertInitialRecipes(RecipeModel recipe) async {
    final Database db = await database;

    return await db.insert(
      'recipes',
      {
        'title': recipe.title,
        'favourite': recipe.favourite ? 1 : 0,
        'cookingTime': recipe.cookingTime,
        'servings': recipe.servings,
        'imgPath': recipe.imgPath,
        'ingredients': recipe.ingredients.join(','),
        'preparation': recipe.preparation.join(','),
        'cooking': recipe.cooking.join(','),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> insertRecipe(RecipeModel recipe) async {
    final Database db = await database;

    return await db.insert(
      'recipes',
      {
        'title': recipe.title,
        'favourite': recipe.favourite ? 1 : 0,
        'cookingTime': recipe.cookingTime,
        'servings': recipe.servings,
        'imgPath': recipe.imgPath,
        'ingredients': recipe.ingredients.join(','),
        'preparation': recipe.preparation.join(','),
        'cooking': recipe.cooking.join(','),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<RecipeModel>> getAllRecipes() async {
    final Database db = await database;

    final List<Map<String, dynamic>> maps = await db.query('recipes');

    return List.generate(maps.length, (i) {
      return RecipeModel(
        title: maps[i]['title'],
        favourite: maps[i]['favourite'] == 1,
        cookingTime: maps[i]['cookingTime'],
        servings: maps[i]['servings'],
        imgPath: maps[i]['imgPath'],
        ingredients: maps[i]['ingredients'].split(','),
        preparation: maps[i]['preparation'].split(','),
        cooking: maps[i]['cooking'].split(','),
      );
    });
  }


}
