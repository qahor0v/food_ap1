import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class CategoryHomeEvent extends Equatable {
  final int page;
  final ScrollController controller;

  const CategoryHomeEvent({
    required this.page,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}

class CategoryChanger extends CategoryHomeEvent {
  const CategoryChanger({
    required super.page,
    required super.controller,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}
