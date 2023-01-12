import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app1/models/navbar.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc()
      : super(NavbarState(
            navbar: NavbarModel(page: 0, controller: PageController()))) {
    on<PageChanger>(onPageChange);
  }

  void onPageChange(PageChanger event, Emitter<NavbarState> emit) {
    final state = this.state;
    emit(
      NavbarState(
        navbar: NavbarModel(
          page: event.page,
          controller: PageController(),
        ),
      ),
    );
  }
}
