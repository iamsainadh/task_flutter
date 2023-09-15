import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:flutter_task/utils/reviewcustompainter.dart';

class AboutCollegeTab extends StatelessWidget {
  const AboutCollegeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Description",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 14, color: greyColor2),
          ),
          const SizedBox(
            height: 15,
          ), //Location
          const Text(
            "Location",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 180,
              child: Image.network(
                "https://korii.slate.fr/sites/default/files/styles/1440x600/public/larnac.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Student Review
          const SizedBox(
            height: 15,
          ), //Location
          const Text(
            "Student Review",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 80,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/person1.jpg",
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15)),
                  width: 70,
                  height: 70,
                  child: const Center(
                      child: Text(
                    "+12",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          //Arrow
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
                height: 10,
                child: ClipPath(
                  clipper: ReviewTriangleContainer(),
                  child: Container(
                    width: 30,
                    height: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [primaryColor, Colors.transparent],
                      ),
                    ),
                  ),
                )),
          ),

          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Arun Sai",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          FluentIcons.star_20_filled,
                          color: Colors.yellow,
                        ),
                        Icon(
                          FluentIcons.star_20_filled,
                          color: Colors.yellow,
                        ),
                        Icon(
                          FluentIcons.star_20_filled,
                          color: Colors.yellow,
                        ),
                        Icon(
                          FluentIcons.star_20_filled,
                          color: Colors.yellow,
                        ),
                        Icon(
                          FluentIcons.star_half_20_filled,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
