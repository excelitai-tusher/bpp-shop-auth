
import 'package:flutter/material.dart';

class OrderProduct with ChangeNotifier {
  final String id;
  final String category;
  final String title;
  final String image;
  final double price;
  final String quantity;
  final String quantityType;
  final String prePrice;

  OrderProduct(
      {required this.id,
        required this.title,
        required this.image,
        required   this.category,
        required this.price,
        required this.quantity,
        required this.quantityType,
        required this.prePrice, OrderProduct,
      });
}