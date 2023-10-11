import 'package:face_variant/global_widgets/global_button_settings.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/home_screen.dart';
import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:face_variant/utils/app_color.dart';
import 'package:face_variant/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'widgets/cosial_share.dart';
import 'widgets/price_location.dart';
import 'widgets/uy_malumoti.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white54,
          centerTitle: true,elevation: 0,title: const Text('Detail Screen',style: TextStyle(color: AppColors.black),),
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const TabBox(),));
          }, icon: Icon(Icons.arrow_back,color: AppColors.black,)),
            ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(children: [
          const SizedBox(height: 10),
          Text(
            'Ташкент, Яккасарайский \nрайон,улица Яккасарай, 7',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(AppImage.globalImage),
          ),
          const SizedBox(height: 10),
          const PriceLocation(),
          const SizedBox(height: 10),
          Text(
            'Yunusobod tumanida 2 xonali kvartira sotiladi tijorat yoki offis uchun ham foydalanilsa boladi',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w400,color: AppColors.subTitleColor),
          ),
          const SizedBox(height: 10),
          const  UyHaqidaMalumot(),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(AppImage.location),
          ),
          const SizedBox(height: 20),
          const Divider(color: AppColors.black,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CosialShare(title: '+998 91 203 55 66', subtitle: 'Bog’lanish', callback: () {  },),
              CosialShare(title: 't_me:@arenda_uy', subtitle: 'Telegramdan yozish', callback: () {  },),
            ],),
          const SizedBox(height: 20),
          GlobalButton(title: 'E\'lonni ulashish', callback: (){}),
          const SizedBox(height: 30),
          Text(
            'O\'xshash elonlar',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),


        ],),
      ),
    );
  }
}
