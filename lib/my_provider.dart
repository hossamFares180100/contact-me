import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier { // notify listeners when data changes
  String _myPlatform="assets/whatsapp.png";
  String _myUrl="https://wa.me/+201114652236";

 String getMyPlatform()=>_myPlatform;
 String getMyUrl()=>_myUrl;

 void setMyPlatform(String platform){
   _myPlatform=platform;
   notifyListeners();
 }

  void setMyUrl(String url){
    _myUrl=url;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}