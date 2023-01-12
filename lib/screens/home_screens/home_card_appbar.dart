import 'package:flutter/material.dart';
import 'package:food_app1/constants/example.dart';

class HomeAppbarCard extends StatefulWidget {
  const HomeAppbarCard({Key? key}) : super(key: key);

  @override
  State<HomeAppbarCard> createState() => _HomeAppbarCardState();
}

class _HomeAppbarCardState extends State<HomeAppbarCard> {
  PageController controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: SizedBox(
        //  color: Colors.red,
        height: height * 0.3,
        width: width,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (page) {
                  setState(() {
                    index = page;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [
                  cardBuilder(height),
                  cardBuilder(height),
                  cardBuilder(height),
                ],
              ),
            ),
            SizedBox(
              // color: Colors.black,
              height: height * 0.02,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                        controller.jumpToPage(0);
                      });
                    },
                    child: AnimatedContainer(
                      height: 10,
                      width: index == 0 ? 40 : 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      duration: const Duration(milliseconds: 400),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                        controller.jumpToPage(1);
                      });
                    },
                    child: AnimatedContainer(
                      height: 10,
                      width: index == 1 ? 40 : 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      duration: const Duration(milliseconds: 400),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                        controller.jumpToPage(2);
                      });
                    },
                    child: AnimatedContainer(
                      height: 12,
                      width: index == 2 ? 40 : 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      duration: const Duration(milliseconds: 400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardBuilder(height) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
        left: 25,
        right: 25,
        bottom: 12,
      ),
      width: double.infinity,
      height: height * 0.28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          width: double.infinity,
          height: height * 0.28,
          imgPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
