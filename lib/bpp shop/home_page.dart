import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'bpp_main_drawer.dart';
import 'component/product_offers.dart';
import 'model/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Dummy_Product>(context);
    final data = productsData.items;
    final products = productsData.items;
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE37D4E),
        leading: IconButton(
          onPressed: () {
            _scafoldKey.currentState!.openDrawer();

          },
          icon: Icon(Icons.menu),
        ),
        title: Text("BPP Shop"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      drawer: BPPMainPageDrawer(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
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
              padding: EdgeInsets.symmetric(vertical: 30,),
              //margin: EdgeInsets.symmetric(vertical: 30),
              height: MediaQuery.of(context).size.height*.45,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                    value: products[index],
                    child: ProductOffer(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
