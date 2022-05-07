import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product order list.dart';
import '../model/product order model.dart';

class OrderListComplete extends StatelessWidget {
  OrderListComplete({Key? key,required this.index,required this.list}) : super(key: key);

  int? index;
  List<OrderProduct> list;
  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product_Order>(context, listen: false);
    // final product1 = product.items;
    return Scaffold(
      body: Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: index==0?list.length:3,
            itemBuilder: (BuildContext context, int index) {
              final item=list[index];
              return ListTile(
                leading: Image(
                  image: AssetImage("${item.image}"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.title),
                      ],
                    ),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Tk ${item.price}',
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        item.quantity,
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
                      'Tk ${ item.price}',
                      style: TextStyle(
                        color: Color(0xffE37D4E),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      item.prePrice,
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
                      item.quantityType,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
      ),
    );
  }
}
