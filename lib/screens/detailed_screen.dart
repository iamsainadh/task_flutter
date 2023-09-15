import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/utils/about_college/about_college.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:flutter_task/utils/hostel_facility/hostel_facility.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({super.key});

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage>
    with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(
      vsync: this,
      length: 4,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FluentIcons.arrow_circle_left_28_filled,
            size: 45,
          ),
        ),
        actions: [
          Card(
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                FluentIcons.bookmark_24_regular,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            "assets/images/categoryImages/universityImage.jpg",
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 5,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "GHJK Engineering College",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                //Sub Text
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ",
                        style: TextStyle(fontSize: 14, color: greyColor2),
                      ),
                    ),
                    //Rating Button
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: greenColor,
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              FluentIcons.star_16_filled,
                              color: whiteColor,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Tab Bar
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: const Border(
                top: BorderSide(color: Colors.grey, width: 1.1),
                bottom: BorderSide(color: Colors.grey, width: 1.1),
              ),
            ),
            child: TabBar(
              isScrollable: true,
              controller: tabController,
              padding: const EdgeInsets.only(left: 15, right: 15),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorWeight: 5,
              indicatorColor: primaryColor,
              indicatorPadding:
                  const EdgeInsets.only(top: 8, left: 8, right: 8),
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              tabs: const [
                Tab(
                  text: "About college",
                ),
                Tab(
                  text: "Hostel facility",
                ),
                
                Tab(
                  text: "Q & A",
                ),
                Tab(
                  text: "Events",
                ),
              ],
            ),
          ),

          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.2,
            child: TabBarView(controller: tabController, children: const [
              AboutCollegeTab(),
              HostelFacilityTab(),
            ]),
          )
        ]),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            bottom: 16,
          ),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Apply Now",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
