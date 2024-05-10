import 'dart:convert';

import 'package:example_custom_painter/models/Response_recipes.dart';
import 'package:http/http.dart' as http;

class ApiService {
  ApiService._internal();

  static final ApiService _singleton = ApiService._internal();

  factory ApiService() {
    return _singleton;
  }

  fetchRecipes() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/recipes'),
    );
    final responseJson = jsonDecode(response.body);
    final res = ResponseRecipes.fromJson(responseJson);
    final recipesList = res.recipes;
    return recipesList;
  }
}
