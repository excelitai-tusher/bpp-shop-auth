// @dart=2.9
import 'package:bpp_shop/bpp%20shop/model/product_list.dart';
import 'package:bpp_shop/grocery%20shop/lib/ui/view/home_page/home_page_main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../bpp shop/component/product_offers.dart';
import 'core/controller/app_state_controller.dart';
import 'core/controller/home_page_event_handeller.dart';
import 'core/controller/order_history_event_handler.dart';
import 'core/controller/product_detail_data_controller.dart';
import 'core/model/BundleOffersModel.dart';
import 'core/model/cart_model.dart';
import 'core/model/my_favourite_data_model.dart';

void main() {
  // Color overlayColor = backGroundColor;
  // final systemBarColors = SystemUiOverlayStyle(
  //   systemNavigationBarColor: overlayColor,
  //   statusBarColor: overlayColor,
  // );
  // SystemChrome.setSystemUIOverlayStyle(systemBarColors);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppStateController()),
        ChangeNotifierProvider.value(value: ProductDetailDataController()),//MyFavouriteDataModel
        ChangeNotifierProvider.value(value: MyFavouriteDataModel()),//BundleOffersModel
        ChangeNotifierProvider.value(value: BundleOffersModel()),//CartModel
        ChangeNotifierProvider.value(value: CartModel()),//OrderHistoryEventHandler
        ChangeNotifierProvider.value(value: OrderHistoryEventHandler()),
        ChangeNotifierProvider.value(value: CustomScafoldKey()), //OrderHistoryEventHandler
        ChangeNotifierProvider.value(value: OrderHistoryEventHandler()),//CustomScafoldKey
        ChangeNotifierProvider.value(value: CustomScafoldKey()),
        ChangeNotifierProvider.value(value: Dummy_Product()),//CustomScafoldKey
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(//jhhj
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          fontFamily: 'Poppins',
        ),
        home: GroceryHomePage(),
      ),
    );
  }
}