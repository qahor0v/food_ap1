import 'package:flutter/material.dart';
import 'package:food_app1/screens/home_screens/short_card_home.dart';

class ShortsHome extends StatefulWidget {
  const ShortsHome({Key? key}) : super(key: key);

  @override
  State<ShortsHome> createState() => _ShortsHomeState();
}

class _ShortsHomeState extends State<ShortsHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
       // color: Colors.red,
          width: width,
          height: height * 0.33,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 2,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.local_fire_department_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                    Text(
                      "Tez Jiz-Biz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 20 : 16,
                        right: index == 4 ? 20 : 0.0,
                        bottom: 12,
                        top: 6,
                      ),
                      child: const ShortCardHome(),
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
