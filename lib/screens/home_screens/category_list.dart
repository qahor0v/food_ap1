import 'package:flutter/material.dart';
import 'package:food_app1/blocs/category_bloc/category_home_event.dart';
import 'package:food_app1/blocs/category_bloc/category_home_state.dart';
import 'package:food_app1/constants/example.dart';
import 'package:food_app1/services/scroll_to_index.dart';

import '../../blocs/bloc_exports.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: BlocBuilder<CategoryHomeBloc, CategoryHomeState>(
        builder: (context, state) {
          int currentIndex = state.categoryTools.page;
          return SizedBox(
            height: height * 0.09,
            width: width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 20 : 12,
                    right: index == categories.length - 1 ? 20 : 0.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      context.read<CategoryHomeBloc>().add(
                            CategoryChanger(
                              page: index,
                              controller: ScrollController(),
                            ),
                          );
                      ScrollHelper.scrollHelper(
                        index,
                        state.categoryTools.controller,
                        height,
                      );
                    },
                    child: Chip(
                      labelPadding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 12,
                        right: 12,
                      ),
                      label: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == currentIndex
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      backgroundColor:
                          index == currentIndex ? Colors.black : Colors.white,
                      elevation: 8.0,
                      shadowColor: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                );
              },
              itemCount: categories.length,
            ),
          );
        },
      ),
    );
  }
}
