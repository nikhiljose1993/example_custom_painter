import 'package:example_custom_painter/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:example_custom_painter/models/Recipes.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(RecipeInitial(rList: [])) {
    on<FetchRecipes>((event, emit) async {
      List<Recipes?> recipesList = await ApiService().fetchRecipes();
      emit(RecipeState(rList: recipesList));
    });
  }
}
