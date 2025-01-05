import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final String path, uri;
  
  Function(String platform,String myUrl) changeMyState;

  SocialMediaIcon(this.path, this.uri,this.changeMyState, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/$path"),
          radius: 40,
        ),
        onDoubleTap: () {
         changeMyState("assets/$path",uri);
        },
        onTap: () {
         changeMyState("assets/$path",uri);
          //flutter pub add url_launcher
          launchUrl(Uri.parse(uri));
        },
      ),
    );
  }
}





