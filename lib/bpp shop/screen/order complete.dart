import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product order list.dart';
import 'order list complete.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  _OrderCompleteState createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> with TickerProviderStateMixin {

  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 2,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product_Order>(context, listen: true);
    final product1 = product.items;
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
              'Order Id 5541236',
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
                          image: AssetImage("images1/order complete.png"),
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
                                    text: 'Complete',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
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
                                    text: '5541236',
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
                      controller: tabController!,
                      labelColor: Color(0xffE37D4E),
                      unselectedLabelColor: Colors.grey,
                      // unselectedLabelStyle: TextStyle(color: Theme.of(context).errorColor),
                      // labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                      tabs: [
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.home),
                              SizedBox(height: 5,),
                              Text("Recorder"),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.card_travel_sharp),
                              SizedBox(height: 5,),
                              Text("Pay Now"),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(Icons.cancel_outlined),
                              SizedBox(height: 5,),
                              Text("Cancel"),
                            ],
                          ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                ]
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "* * * * *",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Report Issue",
                              style: TextStyle(
                                color: Color(0xffE37D4E),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: tabController!,
                    children: [
                      OrderListComplete(index: 0,list: product1,),
                      //OrderListComplete(index: 0,list: product1,),
                      Container(),
                      OrderListComplete(index: 3,list: product1,),
                      // Container(height: 200,width: 200,color: Colors.green,),
                      // Container(height: 200,width: 200,color: Colors.red,),
                      // Container(height: 200,width: 200,color: Colors.deepOrange,),
                    ],
                  )
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
