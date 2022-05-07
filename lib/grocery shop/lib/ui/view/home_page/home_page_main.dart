import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../core/controller/app_state_controller.dart';
import '../../../core/controller/home_page_event_handeller.dart';
import '../../../core/model/main_home_page_bottom_appbar_model.dart';
import '../../constant/app_colors.dart';
import '../hamburger/hamburger1.dart';
import 'component/custom_appbar_search_and_filter_widget.dart';

class GroceryHomePage extends StatefulWidget {
  const GroceryHomePage({Key? key}) : super(key: key);

  @override
  State<GroceryHomePage> createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final pageState = Provider.of<AppStateController>(context);
    final customScafoldKey = Provider.of<CustomScafoldKey>(context);
    return Scaffold(
        key: customScafoldKey.scaffoldKey,
        backgroundColor: backGroundColor,
        appBar: pageState.homePageAppBarView
            ? AppBar(
                backgroundColor: backGroundColor,
                elevation: 0.0,
                toolbarHeight: 150,
                leadingWidth: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: backGroundColor,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light,
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Container(),
                ),
                title: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: SizedBox(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: CustomAppBarSearchAndFilterWidget(),
                      ),
                    ),
                  ],
                ),
              )
            : null,
        drawer: Drawer(
          child: Hamburger1(),
        ),

        ///body..........
        body: pageState.appBodyState(
          context: context,
        ),
        // pageState.primaryPageState
        //     ? pageState.primaryBody(
        //         context: context, currentIndex: pageState.primaryCurrentIndex)
        //     : pageState.secondaryBody(
        //         context:
        //             context), //primaryBody(context: context,currentIndex: currentIndex),
        ///body..........

        floatingActionButton: FloatingActionButton(
          backgroundColor: pageState.primaryCurrentIndex == 4
              ? primaryColor
              : secondaryColor,
          onPressed: () {
            pageState.primaryCurrentIndex = 4;
            pageState.setAppBarViewState(false);
          },
          child: Icon(
            Icons.shopping_bag_outlined,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...MainHomePageBottomAppBarModel.list
                  .map((MainHomePageBottomAppBarModel data) {
                return data.isBlank
                    ? SizedBox(
                        width: 10,
                      )
                    : InkWell(
                        onTap: () {
                          pageState.setPrimaryCurrentIndex(data.index);
                          pageState.setPrimaryPageState(true);
                          //stateController.currentIndex = data.index;
                          if (pageState.primaryCurrentIndex == 0) {
                            pageState.setAppBarViewState(true);
                          } else {
                            pageState.setAppBarViewState(false);
                          }
                          // setState(() {
                          //   // primaryPageState.setPrimaryPage(data.index);
                          //   // productAppBar.setPrimaryState(true);Excel#G+@2021
                          //   stateController.setCurrentIndex(data.index);
                          //   //stateController.currentIndex = data.index;
                          //   if(stateController.currentIndex==0){
                          //     stateController.setAppBarViewState(true);
                          //   }else{
                          //     stateController.setAppBarViewState(false);
                          //   }
                          // });
                          print(data.index.toString());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              //SizedBox(height: 10,),
                              Icon(
                                data.icon,
                                color: pageState.primaryCurrentIndex ==
                                        data.index //currentIndex == data.index
                                    ? secondaryColor //Excel#G+P@2021
                                    : tertiaryColor2,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                data.label!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: pageState.primaryCurrentIndex ==
                                              data.index //currentIndex == data.index
                                          ? secondaryColor
                                          : tertiaryColor2,
                                    ),
                              )
                            ],
                          ),
                        ),
                      );
              })
            ],
          ),
        ));
  }
}
