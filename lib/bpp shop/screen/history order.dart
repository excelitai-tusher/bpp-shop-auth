import 'package:flutter/material.dart';
import '../model/order history.dart';
import 'order cancelled.dart';
import 'order complete.dart';

class OrderHistoryList extends StatefulWidget {
  const OrderHistoryList({Key? key}) : super(key: key);

  @override
  _OrderHistoryListState createState() => _OrderHistoryListState();
}

class _OrderHistoryListState extends State<OrderHistoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back, color: Colors.black,size: 25,),
        ),
        title: Text("Order History",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: Order.list.length,
          itemBuilder: (BuildContext context, i) {
            Order product = Order.list[i];
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height*.2,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order Id: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(product.OrderId.toString(),
                                    style: TextStyle(
                                      color: Colors.black38,
                                    )),
                              ],
                            ),
                          ),
                          Text('${product.status}',
                              style: TextStyle(
                                color: product.status == 'Complete'
                                    ? Colors.green
                                    : Colors.black38,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(product.date.toString(),
                              style: TextStyle(
                                color: Colors.black38,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Text(
                            "TK: 0",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          // Text(product.Tk.toString(),
                          //     style: TextStyle(
                          //       color: Colors.black38,
                          //     )),
                          SizedBox(width: 15),
                          Text("1 shipment",
                              style: TextStyle(
                                  color: Colors.grey,
                              )),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderComplete()));
                              },
                              icon: Icon(Icons.newspaper, color: Colors.amber,),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderComplete()));
                              },
                              child: Text("Details",
                                  style: TextStyle(
                                    color: Colors.amber,
                                  )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
