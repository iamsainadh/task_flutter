import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/data/data.dart';
import 'package:flutter_task/utils/colors.dart';

class HostelFacilityTab extends StatefulWidget {
  const HostelFacilityTab({super.key});

  @override
  State<HostelFacilityTab> createState() => _HostelFacilityTabState();
}

class _HostelFacilityTabState extends State<HostelFacilityTab> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return customTabBar(context, "${index + 4}",
                      "assets/images/sleeping.png", index);
                }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: images
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, bottom: 40.0, left: 20),
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(e), fit: BoxFit.cover),
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: controller,
                options: CarouselOptions(
                  // aspectRatio: 18 / 9,
                  viewportFraction: 0.5,
                  padEnds: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  onPageChanged: (index, _) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (current == 0 ? Colors.grey : primaryColor)
                              .withOpacity(current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              //College Name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "GHJK Engineering College",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                                color: whiteColor, fontWeight: FontWeight.bold),
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
                  ),
                ],
              ),
              //Location
              const Row(
                children: [
                  Icon(
                    FluentIcons.location_20_regular,
                    color: primaryColor,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Lorem ipsum dolor",
                    style: TextStyle(
                      letterSpacing: 1,
                      color: blackShade,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Subtext
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut  ",
                  style: TextStyle(
                      color: greyColor2,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              //Facilities
              const Text(
                "Facilities",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/hotel.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text("College in 400mtrs",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: blackShade)),
                  ),
                ],
              ),
              //bathroom
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/bath.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 14.0),
                    child: Text(
                      "Bathrooms: 2",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: blackShade),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget customTabBar(
      BuildContext context, String text, String img, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
            color: index == 0 ? primaryColor : null,
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 30,
              height: 50,
              color: index == 0 ? whiteColor : null,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: index == 0 ? whiteColor : null),
            ),
          ],
        ),
      ),
    );
  }
}
