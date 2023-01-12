import 'package:equatable/equatable.dart';
import 'package:food_app1/models/home_categories.dart';

class CategoryHomeState extends Equatable {
  final CategoryHomeModel categoryTools;

  const CategoryHomeState({required this.categoryTools});

  @override
  // TODO: implement props
  List<Object?> get props => [categoryTools];
}
