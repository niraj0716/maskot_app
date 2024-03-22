import 'package:flutter/material.dart';
import 'package:maskot_app/constant/color_constant.dart';
import 'package:maskot_app/services.dart';

import 'blog.dart';
import 'drower.dart';
import 'found_pats.dart';

class BottomNavgationBar extends StatefulWidget {
  const BottomNavgationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavgationBar> createState() => _BottomNavgationBarState();
}

class _BottomNavgationBarState extends State<BottomNavgationBar> {
  int select = 0;

  List<Widget> screens = [
    Services(),
    Blog(),
    FoundPats(),
    FoundPats(),
    Draw(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(
            () {
              select = value;
            },
          );
        },
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        selectedFontSize: 15,
        unselectedItemColor: ColorHelper.kGreen,
        selectedItemColor: ColorHelper.kGreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: select,
        backgroundColor: ColorHelper.kDarkGreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Directorio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Blog",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: "Mascotas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Extraviados",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Mi cuenta",
          ),
        ],
      ),
      body: screens[select],
    );
  }
}
