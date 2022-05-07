import 'package:bpp_shop/bpp%20shop/navbar%20app/bottom%20app%20bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bpp shop/google sign in/loggedIn.dart';
import 'bpp shop/home_page.dart';
import 'bpp shop/model/product order list.dart';
import 'bpp shop/model/product_list.dart';
import 'bpp shop/navbar app/home screen.dart';
import 'bpp shop/navbar app/profile app.dart';
import 'bpp shop/page/homepage.dart';
import 'bpp shop/provider/googleSignInProvider.dart';
import 'bpp shop/screen/email_login.dart';
import 'bpp shop/screen/history order.dart';
import 'grocery shop/lib/core/controller/app_state_controller.dart';
import 'grocery shop/lib/core/controller/home_page_event_handeller.dart';
import 'grocery shop/lib/core/controller/order_history_event_handler.dart';
import 'grocery shop/lib/core/controller/product_detail_data_controller.dart';
import 'grocery shop/lib/core/model/BundleOffersModel.dart';
import 'grocery shop/lib/core/model/cart_model.dart';
import 'grocery shop/lib/core/model/my_favourite_data_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Product_Order()),
        ChangeNotifierProvider.value(value: AppStateController()),
        ChangeNotifierProvider.value(value: ProductDetailDataController()),//MyFavouriteDataModel
        ChangeNotifierProvider.value(value: MyFavouriteDataModel()),//BundleOffersModel
        ChangeNotifierProvider.value(value: BundleOffersModel()),//CartModel
        ChangeNotifierProvider.value(value: CartModel()),//OrderHistoryEventHandler
        ChangeNotifierProvider.value(value: OrderHistoryEventHandler()),
        ChangeNotifierProvider.value(value: CustomScafoldKey()), //OrderHistoryEventHandler
        ChangeNotifierProvider.value(value: OrderHistoryEventHandler()),//CustomScafoldKey
        ChangeNotifierProvider.value(value: CustomScafoldKey()),
        ChangeNotifierProvider.value(value: Dummy_Product()),
        ChangeNotifierProvider.value(value: GoogleSignInProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),//BottomNavBar(currentTab: 0,currentScreen: HomePage(),),
      ),
    );
  }
}

