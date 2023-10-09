import 'package:face_variant/utils/app_image.dart';
import 'package:flutter/material.dart';

class HomeModel {
  final String location;
  final int price;
  final String category;
  final String description;
  final Image image;

  HomeModel(
      {required this.image,
      required this.location,
      required this.price,
      required this.description,
      required this.category});
}

