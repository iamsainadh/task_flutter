import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/data/data.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:flutter_task/utils/sort_list_button.dart';
import 'package:flutter_task/widgets/custom_bottom_bar.dart';
import 'package:flutter_task/widgets/listitem_widget.dart';
import 'package:flutter_task/widgets/search_widget.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  int totalColleges = 600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          //Search
          Container(
            width: double.infinity,
            height: 225,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Find your own way",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      Stack(
                        children: [
                          const Icon(
                            FluentIcons.alert_20_filled,
                            color: whiteColor,
                          ),
                          Positioned(
                            right: 2,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //Subtext

                  Text(
                    "Search in $totalColleges colleges around!",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: whiteColor),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  const SearchWidget()
                ],
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.631,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: categoryData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 1.6,
                                child: const Padding(
                                    padding: EdgeInsets.all(25.0),
                                    child: SortList()),
                              );
                            });
                      },
                      child: ListItemWidget(index: index));
                }),
          )
        ],
      ),
      bottomNavigationBar: const Wrap(children: [CustomBottomBar()]),
    );
  }
}
