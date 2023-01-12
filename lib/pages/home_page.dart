import 'package:flutter/material.dart';
import 'package:food_app1/blocs/bloc_exports.dart';
import 'package:food_app1/pages/navbar_pages/home.dart';
import 'package:food_app1/screens/home_screens/navbar_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          body: PageView(
            onPageChanged: (index) {
              context.read<NavbarBloc>().add(
                    PageChanger(
                      page: index,
                      controller: state.navbar.controller,
                    ),
                  );
            },
            controller: state.navbar.controller,
            children: [
              const Home(),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.green,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue,
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: const NavBarScreen(),
        );
      },
    );
  }
}
