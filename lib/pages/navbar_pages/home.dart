import 'package:flutter/material.dart';
import 'package:food_app1/blocs/bloc_exports.dart';
import 'package:food_app1/blocs/category_bloc/category_home_state.dart';
import 'package:food_app1/screens/home_screens/category_item_list.dart';
import 'package:food_app1/screens/home_screens/category_list.dart';
import 'package:food_app1/screens/home_screens/home_card_appbar.dart';
import 'package:food_app1/screens/home_screens/shorts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: BlocBuilder<CategoryHomeBloc, CategoryHomeState>(
          builder: (context, state) {
            return CustomScrollView(
              controller: state.categoryTools.controller,
              slivers: const [
                HomeAppbarCard(),
                CategoryList(),
                CategoryItemList(),
                CategoryItemList(),
                ShortsHome(),
                CategoryItemList(),
                CategoryItemList(),
                CategoryItemList(),
                CategoryItemList(),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 100,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
