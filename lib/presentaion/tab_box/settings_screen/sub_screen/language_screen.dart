
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
          onPressed: (){
         context.go('/tab_box');
        },),
        elevation: 0,centerTitle: true,
        backgroundColor: Colors.white,
        title:const Text('Language',style: TextStyle(color: Colors.black),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _language('UZB_uzb'),
         const SizedBox(height: 10),
          _language("CRYL_cryl"),
        const  SizedBox(height: 10),
          _language("RUS_rus"),
         const SizedBox(height: 10),
        ],
      ),
    );
  }
}



_language(String title)=>Container(
  margin: const EdgeInsets.all(10),
  decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
  child:   ListTile(
    onTap: (){},
    title: Text(title),
    trailing:const Icon(Icons.flag),
  ),
);