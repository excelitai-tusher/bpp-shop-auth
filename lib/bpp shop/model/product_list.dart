import 'package:bpp_shop/bpp%20shop/home_page.dart';
import 'package:bpp_shop/bpp%20shop/model/product_model.dart';
import 'package:flutter/material.dart';
import '../../grocery shop/lib/ui/view/home_page/home_page_main.dart';
class Dummy_Product with ChangeNotifier{
  List<Product1> _items1 = [
    Product1(
      id:'p1',
      upcoming:withoutUpcomming() ,
      image: 'images/grocery.png',
      price: 200,
      title: 'Grocery',
      page: GroceryHomePage(),
    ),
    // Product1(
    //   id:'p2',
    //   upcoming:withoutUpcomming() ,
    //   image: 'images/image 1.png',
    //   price: 200,
    //   title: 'Blue Stone Tasbi',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p3',
    //   upcoming:withoutUpcomming() ,
    //   image: 'images/image 3.png',
    //   price: 200,
    //   title: 'Green & White Janamaz',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 4.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 5.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 6.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 7.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 8.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 237.png',
    //   price: 200,
    //   title: 'Khejur Gur',
    //   page: GroceryHomePage(),
    // ),Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 238.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 245.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 246.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images1/image 241.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 242.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 243.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
    // Product1(
    //   id:'p4',
    //   upcoming:upcommingWidget(),
    //   image: 'images/image 244.png',
    //   price: 200, title: 'bhkjhlhjl',
    //   page: GroceryHomePage(),
    // ),
  ];
  List<Product1> get items {
    return [..._items1];
  }
  Product1 findById(String id) {
    return _items1.firstWhere((prod) => prod.id == id);
  }
}

class withoutUpcomming extends StatelessWidget {
  const withoutUpcomming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
 );
  }
}

class upcommingWidget extends StatelessWidget {
  const upcommingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF426134),
      ),
      alignment: Alignment.topRight,
      height: 30,
      width: MediaQuery.of(context).size.width*.3,

      margin: EdgeInsets.only(top: 10),
      child: Center(child: Text("Upcoming..",style: TextStyle(color: Colors.white),)),
    );
  }
}