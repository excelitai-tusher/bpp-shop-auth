import 'package:bpp_shop/bpp%20shop/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product_model.dart';

class ProductOffer extends StatelessWidget {
  String?up;
  //const ProductOffer({Key? key}) : super(key: key);
  ProductOffer({this.up});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product1>(context, listen: false);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => product.page));
      },
      child: Container(
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey)),
        child: GridTile(
          child: Column(
            children: [
             Container(
               margin: EdgeInsets.only(right: 8),
                 alignment: Alignment.topRight,
                 child: product.upcoming,
             ),
              Container(
                  height: 110,
                  child: Center(
                    child: Image.asset(
                      '${product.image}',
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
              Text(
                '${product.title}',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
