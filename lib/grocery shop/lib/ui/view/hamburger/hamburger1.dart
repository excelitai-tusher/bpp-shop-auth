import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/app_state_controller.dart';
import '../../../core/controller/home_page_event_handeller.dart';
import '../my_card/my card.dart';
import '../my_coupon/my coupon.dart';
import '../product_request/product request.dart';
import '../top_deals/deals_screen.dart';
import '../track_order/track order.dart';

class Hamburger1 extends StatefulWidget {
  const Hamburger1({Key? key}) : super(key: key);

  @override
  _Hamburger1State createState() => _Hamburger1State();
}

class _Hamburger1State extends State<Hamburger1> {
  @override
  Widget build(BuildContext context) {
    final customScafoldKey=Provider.of<CustomScafoldKey>(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffE5E5E5),
            leading: Icon(Icons.cancel, size: 25, color: Colors.grey,),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            //margin: EdgeInsets.,
                            child: Container(
                              height: 30,
                              width: 40,
                              child: Image(image: AssetImage("images/profile1.png")),
                              // decoration: BoxDecoration(
                              //   color: Colors.grey,
                              //   shape: BoxShape.circle,
                              //   // image: DecorationImage(
                              //   //  image: AssetImage(""),
                              //   // ),
                              // ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Flexible(
                            child: Text("Hello, Wellcome to Grocery!",
                              style: TextStyle(
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                        },
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sign In /",
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        final pageState=Provider.of<AppStateController>(context,listen: false);
                        pageState.setAppBarViewState(false);
                        pageState.setSecondaryPageState(true);
                        pageState.setSecondaryCurrentIndex(1);
                        customScafoldKey.scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'All Categories',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TopDealsPage()));
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_shopping_cart_rounded,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Top Deals',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        //ProductRequest
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductRequest()));
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.mark_chat_read_rounded,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Make product request',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrder()));
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Track your order',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        //MyCoupon
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyCoupon()));
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.local_offer_sharp,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Coupons',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        //MyCoupon
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyCards()));
                      },
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30,
                              offset: Offset(0, 8), // Shadow position
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.local_offer_sharp,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'My Card',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 30,
                            offset: Offset(0, 8), // Shadow position
                          ),

                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Log Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
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
    );
  }
}
