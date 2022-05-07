import 'package:bpp_shop/bpp%20shop/model/product%20order%20model.dart';
import 'package:flutter/material.dart';

class Product_Order with ChangeNotifier{
  List<OrderProduct> _items12 = [
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
    OrderProduct(
      id:'p1',
      title: 'Maggi Noodles (Family Pack)',
      image: 'images1/maggi noodles.png',
      price: 300,
      prePrice: 'Tk.350',
      category: 'Food',
      quantity: 'Quantity: 1',
      quantityType: '12 pcs',
    ),
  ];
  List<OrderProduct> get items {
    return [..._items12];
  }
  OrderProduct findById(String id) {
    return _items12.firstWhere((prod) => prod.id == id);
  }
}