
import 'package:flutter/material.dart';

import 'social_media_icon.dart';

class SocialGrid extends StatelessWidget {
  const SocialGrid({
    super.key,
    required this.social,
  });

  final Map<String, String> social;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context,index){
          return SocialMediaIcon(social.keys.toList()[index],social.values.toList()[index]);
        },
        shrinkWrap: true, 
      //physics: BouncingScrollPhysics(), // make grid scrollable
      physics: const NeverScrollableScrollPhysics(), // make grid never scroll
      padding: const EdgeInsets.all(20),
      itemCount: social.length,
        );
  }
}
