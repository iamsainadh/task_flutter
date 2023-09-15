import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/utils/colors.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar>
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
    return Container(
      color: primaryColor,
      child: TabBar(
        controller: tabController,
        unselectedLabelColor: Colors.grey,
        labelColor: whiteColor,
        indicatorWeight: 5,
        indicatorColor: whiteColor,
        indicatorPadding: const EdgeInsets.all(8),
        tabs: const [
          Tab(
            icon: Icon(FluentIcons.home_12_filled),
            text: "Search",
          ),
          Tab(
            icon: Icon(FluentIcons.bookmark_search_20_filled),
            text: "Saved",
          ),
          
          Tab(
            icon: Icon(FluentIcons.compass_northwest_20_regular),
            text: "Discover",
          ),
          Tab(
            icon: Icon(FluentIcons.person_20_filled),
            text: "Account",
          ),
        ],
      ),
    );
  }
}
