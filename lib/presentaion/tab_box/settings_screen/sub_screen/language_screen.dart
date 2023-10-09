

import 'package:face_variant/presentaion/tab_box/settings_screen/settings_screen.dart';
import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:flutter/material.dart';


class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
          onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) =>const TabBox(),));
        },),
        elevation: 0,centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Language',style: TextStyle(color: Colors.black),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _language('UZB_uzb'),
          SizedBox(height: 10),
          _language("CRYL_cryl"),
          SizedBox(height: 10),
          _language("RUS_rus"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}



_language(String title)=>Container(
  margin: EdgeInsets.all(10),
  decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
  child:   ListTile(
    onTap: (){},
    title: Text(title),
    trailing: Icon(Icons.flag),
  ),
);