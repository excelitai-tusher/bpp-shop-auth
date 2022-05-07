// import 'package:bpp_shop/bpp%20shop/home_page.dart';
// import 'package:bpp_shop/bpp%20shop/navbar%20app/profile%20app.dart';
// import 'package:bpp_shop/bpp%20shop/navbar%20app/wishlist.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../grocery shop/lib/core/model/model class/cart_model_class.dart';
// import '../../grocery shop/lib/ui/view/cart_page/component/item_count.dart';
// import 'history screen.dart';
// import 'home screen.dart';
//
// class BottomNavBar extends StatefulWidget {
//   BottomNavBar({this.currentTab,this.currentScreen});
//   final int? currentTab;
//   Widget? currentScreen;
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState(currentTab!,currentScreen!);
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   // Properties & Variables needed
//
//   _BottomNavBarState(
//       this.currentTab,
//       this.currentScreen
//       );
//   int currentTab ; // to keep track of active tab index
//   final List<Widget> screens = [
//     HomePage(),
//     Wishlist(),
//     HistoryScreen(),
//     ProfileScreen(),
//
//   ]; // to store nested tabs
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen; //= Home_Page(); // Our first view in viewport
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//        bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 6,
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             HomePage(); // if user taps on this dashboard tab will be active
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.home,
//                           color: currentTab == 0 ? Color(0xFFE37D4E): Colors.grey,
//                         ),
//                         Text(
//                           'Home',
//                           style: TextStyle(
//                             color: currentTab == 0 ? Color(0xFFE37D4E): Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Wishlist(); // if user taps on this dashboard tab will be active
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.favorite_border_outlined,
//                           color: currentTab == 1 ?Color(0xFFE37D4E): Colors.grey,
//                         ),
//                         Text(
//                           'Favorite',
//                           style: TextStyle(
//                             color: currentTab == 1 ? Color(0xFFE37D4E): Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//
//               // Right Tab bar icons
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             HistoryScreen(); // if user taps on this dashboard tab will be active
//                         currentTab = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.dashboard_outlined,
//                           color: currentTab == 2 ? Color(0xFFE37D4E): Colors.grey,
//                         ),
//                         Text(
//                           'History',
//                           style: TextStyle(
//                             color: currentTab == 2 ? Color(0xFFE37D4E) : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             ProfileScreen(); // if user taps on this dashboard tab will be active
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.account_circle,
//                           color: currentTab == 3 ? Color(0xFFE37D4E): Colors.grey,
//                         ),
//                         Text(
//                           'Profile',
//                           style: TextStyle(
//                             color: currentTab == 3 ?Color(0xFFE37D4E): Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
