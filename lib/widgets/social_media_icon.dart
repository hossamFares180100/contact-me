import 'package:contact_me/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final String path, uri;
  

  SocialMediaIcon(this.path, this.uri, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>( // consume data from provider should be parent of this widget that provide data or use data
      builder: (context, value, child) => 
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/$path"),
            radius: 40,
          ),
          onDoubleTap: () {
            value.myPlatform = "assets/$path";
            value.myUrl = uri;
            value.notifyListeners();
          },
          onTap: () {
            value.myPlatform = "assets/$path";
            value.myUrl = uri;
            value.notifyListeners(); 
            //flutter pub add url_launcher
            launchUrl(Uri.parse(uri));
          },
        ),
      ),
      );
  }
}





