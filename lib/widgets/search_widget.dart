import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/utils/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                  iconColor: textColor,
                  hintText: "Search for colleges,schools,exams",
                  hintStyle: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 55,
          height: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: whiteColor,
          ),
          child: const Center(
            child: Icon(
              FluentIcons.mic_24_filled,
              color: primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
