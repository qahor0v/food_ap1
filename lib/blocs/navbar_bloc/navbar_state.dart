part of 'navbar_bloc.dart';

class NavbarState extends Equatable {
  final NavbarModel navbar;

  const NavbarState({required this.navbar});

  @override
  // TODO: implement props
  List<Object?> get props => [navbar];
}
