import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fast_app/views/emergency_ui.dart';
import 'package:fast_app/views/police_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    EmergencyUI(),
    PoliceUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: listWidgets[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.flip,
          backgroundColor: Colors.red,
          items: [
            TabItem(icon: Icons.emergency, title: 'โรงพยาบาล'),
            TabItem(icon: Icons.shield, title: 'ตำรวจ'),
          ],
          onTap: onItemTapped,
          initialActiveIndex: 0,
        ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
