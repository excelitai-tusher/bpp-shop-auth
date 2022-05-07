import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_state_controller.dart';

class HomePageEventHandler{

  void seeAllOnPressedEventListener({BuildContext? context,String? leadingTitle}){
    final pageState=Provider.of<AppStateController>(context!,listen: false);
    if(leadingTitle=="Categories"){
      //final pageState=Provider.of<AppStateController>(context!,listen: false);
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(1);
    }
  }
}

class CustomScafoldKey with ChangeNotifier{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}