import 'package:face_variant/global_widgets/global_button_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
             context.go('/valyuta');

            }),
            const   SizedBox(height: 10),
            GlobalButton(title: 'Language', callback: () {
            context.go('/language');
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
