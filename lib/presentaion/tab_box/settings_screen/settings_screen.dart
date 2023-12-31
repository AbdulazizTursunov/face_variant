import 'package:face_variant/global_widgets/global_button_settings.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/sub_screen/language_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/sub_screen/valyuta_screen.dart';
import 'package:flutter/material.dart';

import 'widget/change_theme_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title:const Text("Settings screen",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 2),
        child: Column(
          children: [
            GlobalButton(title: 'Sum', callback: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const ValyutaScreen(),));

            }),
            const   SizedBox(height: 10),
            GlobalButton(title: 'Language', callback: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LanguageScreen(),));
            }),
            const    SizedBox(height: 10),
            ChangeThemeButton(
              callback: () {},
              title: 'Change theme',
            ),
            const   SizedBox(height: 10),
            GlobalButton(title: 'istoriya Search', callback: () {}),
            const   SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
