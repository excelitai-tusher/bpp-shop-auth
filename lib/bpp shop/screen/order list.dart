import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product order list.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product_Order>(context, listen: false);
    final product1 = product.items;
    return Scaffold(
      body: Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: product1.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(
                  image: AssetImage("${product1[index].image}"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(product1[index].title),
                      ],
                    ),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                       'Tk ${product1[index].price}',
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        product1[index].quantity,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                     'Tk ${ product1[index].price}',
                      style: TextStyle(
                        color: Color(0xffE37D4E),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      product1[index].prePrice,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 3,
                        endIndent: 0,
                        //width: 20,
                      ),
                    ),
                    Text(
                      product1[index].quantityType,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
