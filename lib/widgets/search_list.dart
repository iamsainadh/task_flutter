import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/data/data.dart';
import 'package:flutter_task/screens/detailed_screen.dart';
import 'package:flutter_task/utils/colors.dart';

// ignore: must_be_immutable
class SearchList extends StatelessWidget {
  int index;
  SearchList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailedPage(),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            AssetImage(collegeDeatils[index]['collegeImage']),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            color: whiteColor,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FluentIcons.share_android_24_regular,
                                size: 30,
                              ),
                            ),
                          ),
                          //Save Icon
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            color: whiteColor,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FluentIcons.bookmark_24_regular,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      //Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            collegeDeatils[index]['collegeName'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            color: greenColor,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                              child: Row(
                                children: [
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    FluentIcons.star_16_filled,
                                    color: whiteColor,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      //SubText
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9,
                                  color: textColor),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            color: primaryColor,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Divider
                      const Divider(
                        thickness: 2,
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/badge.png",
                            width: 50,
                            height: 40,
                          ),
                          const Text(
                            "More than 1000+ students have been placed",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          const Icon(
                            Icons.remove_red_eye,
                            color: greyColor2,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "468+",
                            style: TextStyle(fontSize: 12, color: greyColor2),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
