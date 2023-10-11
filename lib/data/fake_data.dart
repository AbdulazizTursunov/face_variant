
import 'package:face_variant/data/home_model.dart';
import 'package:face_variant/utils/app_image.dart';
import 'package:flutter/cupertino.dart';

List<HomeModel> homeModelData = [
  HomeModel(
      image: Image.asset(AppImage.image_1),
      tuman: 'Yunusobod',
      location: 'Yunusobod tumani To\'qimachilik mahallasi',
      price: 2300000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Arenda'),
  HomeModel(
      image: Image.asset(AppImage.image_2),
      tuman: 'Sergili',
      location: 'Sergili tumani Choshtepa  mahallasi',
      price: 2600000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Arenda'),
  HomeModel(
      image: Image.asset(AppImage.image_3),
      tuman: 'Chilonzor',
      location: 'Chilonzor tumani Qatortol mahallasi',
      price: 4500000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Office'),
  HomeModel(
      image: Image.asset(AppImage.image_1),
      tuman: 'Sergili',
      location: 'Sergili tumani Choshtepa mahallasi',
      price: 2000000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Office'),
  HomeModel(
      image: Image.asset(AppImage.image_1),
      tuman: 'Mirobod',
      location: 'Mirobod tumani Bunyodkor mahallasi',
      price: 4300000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Kompleks'),
  HomeModel(
      image: Image.asset(AppImage.image_1),
      tuman: 'Yunusobod',
      location: 'Yunusobod tumani Sanoatchilar mahallasi',
      price: 2300000,
      description: 'holati yaxshi yaqinada barcha narsa bor',
      category: 'Kompleks'),
];

// List<HomeModel> homeModelArenda = [
//   HomeModel(
//       image: Image.asset(AppImage.image_1),
//       location: 'Yunusobod rayoni To\'qimachilik mahallasi',
//       price: 2300000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Arenda'),
//   HomeModel(
//       image: Image.asset(AppImage.image_2),
//       location: 'Sergili rayoni  mahallasi',
//       price: 2600000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Arenda'),
//
// ];
//
// List<HomeModel> homeModelOffice = [
//   HomeModel(
//       image: Image.asset(AppImage.image_3),
//       location: 'Chilonzor rayoni Qatortol mahallasi',
//       price: 4500000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Office'),
//   HomeModel(
//       image: Image.asset(AppImage.image_1),
//       location: 'Sergili rayoni Choshtepa mahallasi',
//       price: 2000000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Office'),
// ];
//
// List<HomeModel> homeModelKompleks = [
//
//   HomeModel(
//       image: Image.asset(AppImage.image_1),
//       location: 'Mirobod rayoni Bunyodkor mahallasi',
//       price: 4300000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Kompleks'),
//   HomeModel(
//       image: Image.asset(AppImage.image_1),
//       location: 'Yunusobod rayoni Sanoatchilar mahallasi',
//       price: 2300000,
//       description: 'holati yaxshi yaqinada barcha narsa bor',
//       category: 'Kompleks'),
// ];

List<String> searchList=[];