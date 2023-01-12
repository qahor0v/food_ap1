import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';

class CategoryHomeModel extends Equatable {
  final int page;
  final ScrollController controller;

  const CategoryHomeModel({
    required this.page,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [page, controller];
}