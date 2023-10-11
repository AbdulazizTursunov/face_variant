import 'package:face_variant/utils/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class UyHaqidaMalumot extends StatelessWidget {
  const UyHaqidaMalumot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blue),
          ),
          child: Column(children: [
            SvgPicture.asset(AppSvg.roomCount,color: Colors.blue,),
            Text('xona soni 3', style: Theme.of(context)
                .textTheme
                .bodyMedium!.copyWith(color: Colors.blue),)
          ],),
        ),
        Container(
          width: 100,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blue),
          ),
          child: Column(children: [
            SvgPicture.asset(AppSvg.floor,color: Colors.blue,),
            Text('4/5 qavat',style: Theme.of(context)
                .textTheme
                .bodyMedium!.copyWith(color: Colors.blue),)
          ],),
        ),
        Container(
          width: 100,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blue),
          ),
          child: Column(children: [
            SvgPicture.asset(AppSvg.roomKv,color: Colors.blue,),
            Text('31.5 м2',style: Theme.of(context)
                .textTheme
                .bodyMedium!.copyWith(color: Colors.blue,),)
          ],),
        ),
      ],
    );
  }
}

