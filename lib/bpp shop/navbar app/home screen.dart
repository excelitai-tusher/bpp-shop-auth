
import 'package:bpp_shop/bpp%20shop/model/product_list.dart';
import 'package:bpp_shop/bpp%20shop/navbar%20app/profile%20app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../bpp_main_drawer.dart';

class HomeScreen extends StatefulWidget {
//   String? subbody;
  const HomeScreen({Key? key}) : super(key: key);
//   HomeScreen({this.subbody});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final appsData = Provider.of<Dummy_Product>(context);

    final apps =appsData.items;
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE37D4E),
        leading: IconButton(
          onPressed: () {
            _scafoldKey.currentState!.openDrawer();

          },
          icon: Icon(Icons.menu,color: Colors.white,),
        ),
        centerTitle: true,
        title: Text("BPP Shop",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            icon: Icon(
              Icons.person,color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: BPPMainPageDrawer(),
      body: Container(
        margin: EdgeInsets.only(left: 10,right: 10,),
        child: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Color(0xFFF1F1F1),
                ),
              ),
            ),
            Container(
              //  padding: EdgeInsets.symmetric(vertical: 30,),
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height*.73,
              child: GridView.builder(
                //physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10),
                  itemCount: apps.length,
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                    value: apps[index],
                    //child: SubApps(),
                  )),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),

    );
  }
}
