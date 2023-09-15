import 'package:flutter/material.dart';
import 'package:flutter_task/data/data.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:flutter_task/widgets/custom_bottom_bar.dart';
import 'package:flutter_task/widgets/search_list.dart';
import 'package:flutter_task/widgets/search_widget.dart';

class ResponseScreen extends StatefulWidget {
  const ResponseScreen({super.key});

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: SearchWidget(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return customTabBar(context, tabData[index]);
                })),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.66,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return  SearchList(index:index);
                }),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }

  Widget customTabBar(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
