import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/screens/search_response_screen.dart';

class SortList extends StatefulWidget {
  const SortList({super.key});

  @override
  State<SortList> createState() => _SortListState();
}

class _SortListState extends State<SortList> {
  String selectedValue = " Bachelor Of Technlogy";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Sort By"),
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(FluentIcons.dismiss_28_regular))
          ],
        ),
        const Divider(
          height: 15,
          thickness: 2,
        ),
      
        ListTile(
          leading: const Icon(
            FluentIcons.hat_graduation_12_regular,
            color: Colors.black,
          ),
          title: const Text("Bachelor of Technology"),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio<String>(
                value: "Bachelor of Technology",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;

                    Navigator.pop(context);
                    navigateToScreen(value);
                  });
                }),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/architecture.png",
            width: 30,
            height: 30,
          ),
          title: const Text("Bachelor of Architecture"),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio<String>(
                value: "Bachelor of Architecture",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;

                    //Navigator.pop(context);
                    navigateToScreen(value);
                  });
                }),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/pharmacy.png",
            width: 30,
            height: 30,
          ),
          title: const Text("Pharmacy"),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio<String>(
                value: "Pharmacy",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;

                    Navigator.pop(context);
                    // navigateToScreen(value);
                  });
                }),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/balance.png",
            width: 30,
            height: 30,
          ),
          title: const Text("Law"),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio<String>(
                value: "Law",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;

                    Navigator.pop(context);
                    // navigateToScreen(value);
                  });
                }),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/management.png",
            width: 30,
            height: 30,
          ),
          title: const Text("Management"),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio<String>(
                value: "Management",
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;

                    Navigator.pop(context);
                    // navigateToScreen(value);
                  });
                }),
          ),
        ),
      ],
    );
  }

  void navigateToScreen(String value) {
    if (value == 'Bachelor of Technology') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResponseScreen(),
        ),
      );
    } else if (value == 'Bachelor of Architecture') {
      // Bachelor of Architecture screen
    } else if (value == 'Pharmacy') {
      //  Pharmacy screen
    } else if (value == 'Law') {
      // Law screen
    } else if (value == 'Management') {
      //  Management screen
    }
  }
}
