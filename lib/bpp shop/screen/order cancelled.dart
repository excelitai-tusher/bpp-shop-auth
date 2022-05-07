import 'package:flutter/material.dart';
import 'order complete.dart';
import 'order list.dart';

class OrderCancelled extends StatefulWidget {
  const OrderCancelled({Key? key}) : super(key: key);

  @override
  _OrderCancelledState createState() => _OrderCancelledState();
}

class _OrderCancelledState extends State<OrderCancelled> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            title: Text(
              'Order Id 6941236',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 35),
                      width: 120,
                      height: 120,
                      //BoxDecoration Widget
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images1/order cart.png"),
                          fit: BoxFit.scaleDown,
                        ), //DecorationImage
                        border: Border.all(
                          color: Color(0xffF5DCD0),
                          width: 8,
                        ), //Border.all
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffF5DCD0),
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Order ',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Cancelled',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Order ID ',
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '6941236',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: Container(
                    color: Colors.white,
                    height: 60,
                    child: TabBar(
                      labelColor: Color(0xffE37D4E),
                      unselectedLabelColor: Colors.grey,
                      // unselectedLabelStyle: TextStyle(color: Theme.of(context).errorColor),
                      // labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                      tabs: [
                        Column(
                          children: [
                            Icon(Icons.home),
                            SizedBox(height: 5,),
                            Text("Recorder"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.card_travel_sharp),
                            SizedBox(height: 5,),
                            Text("Pay Now"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.cancel_outlined),
                            SizedBox(height: 5,),
                            Text("Cancel"),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffF5DCD0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "6941236B",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Apr 2,2022",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  indent: 3,
                                  endIndent: 0,
                                  //width: 20,
                                ),
                              ),
                              Text(
                                "8:00 PM - 9.00 PM",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*.33,
                    child: OrderList(),
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  color: Colors.grey,
                  thickness: 2,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Details",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.home, size: 30,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(
                            "New Eskaton Road, Mogbazar, \nRamna, Dhaka-1212",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "+88015*****",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: RichText(
                          text: TextSpan(
                            text: 'Total     ',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Tk.96688',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffE37D4E),
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
