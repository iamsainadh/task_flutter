import 'package:flutter/material.dart';
import 'package:flutter_task/data/data.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:flutter_task/utils/search_screen_custom_container.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  int index;
  ListItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
      child: Stack(
        children: [
          Positioned(
            left: 230,
            bottom: -1,
            child: Container(
              width: 150,
              height: 50,
              decoration: const BoxDecoration(
                color: whiteColor,
              ),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: categoryData[index]['available'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " ${categoryData[index]["categoryName"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          color: greyColor2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: SearchScreenClipPath(),
            child: Container(
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0, 0.6],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                    categoryData[index]["categoryImage"],
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              width: 354,
              height: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryData[index]["category"],
                  style: const TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Wrap(
                    children: [
                      Text(
                        categoryData[index]["categoryDesc"],
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 6,
                            color: whiteColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
