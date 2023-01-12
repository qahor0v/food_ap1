part of 'navbar_bloc.dart';

class NavbarEvent extends Equatable {
  final int page;
  final PageController controller;

  const NavbarEvent({
    required this.page,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}

class PageChanger extends NavbarEvent {
  const PageChanger({
    required super.page,
    required super.controller,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}
