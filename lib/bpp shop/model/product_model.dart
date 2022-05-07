import 'package:flutter/material.dart';

class Product1 with ChangeNotifier {
  final String id;
 Widget ?upcoming;
  final String title;
  final String image;
  final int price;
  final Widget page;

  bool? isFavorite;
  Product1(
      {required this.id,
        required this.page,
        this.upcoming,
        required this.title,
        required this.image,
        required this.price,
        this.isFavorite});
}