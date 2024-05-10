part of 'recipe_bloc.dart';

class RecipeState {
  late List<Recipes?> rList;

  RecipeState({required this.rList});
}

final class RecipeInitial extends RecipeState {
  RecipeInitial({required super.rList});
}
