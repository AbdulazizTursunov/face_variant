import 'package:face_variant/presentaion/tab_box/home_screen/home_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';


class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
   int currentIndex = 0;
   List<Widget> screens = [];

  @override
  void initState() {
    screens = [
   const   HomeScreen(),
   const   SettingsScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          elevation: 10,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap:(val){

            setState(() {
              currentIndex = val;
            });
    },
          items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
      ]),
    );
  }
}
