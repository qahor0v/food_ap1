import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';

class NavbarModel extends Equatable {
  final int page;
  final PageController controller;

  const NavbarModel({
    required this.page,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}
