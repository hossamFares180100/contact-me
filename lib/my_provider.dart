import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier { // notify listeners when data changes
  String? myPlatform;
  String? myUrl;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}