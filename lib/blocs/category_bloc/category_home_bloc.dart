import 'package:flutter/widgets.dart';
import 'package:food_app1/blocs/category_bloc/category_home_event.dart';
import 'package:food_app1/blocs/category_bloc/category_home_state.dart';
import 'package:food_app1/models/home_categories.dart';

import '../bloc_exports.dart';

class CategoryHomeBloc extends Bloc<CategoryHomeEvent, CategoryHomeState> {
  CategoryHomeBloc()
      : super(CategoryHomeState(
      categoryTools: CategoryHomeModel(page: 0, controller: ScrollController()))) {
    on<CategoryChanger>(onCategoryChange);
  }

  void onCategoryChange(CategoryChanger event, Emitter<CategoryHomeState> emit) {
    final state = this.state;
    emit(
      CategoryHomeState(
        categoryTools: CategoryHomeModel(
          page: event.page,
          controller: ScrollController(),
        ),
      ),
    );
  }
}
