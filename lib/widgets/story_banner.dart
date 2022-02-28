import 'package:flutter/material.dart';
import 'package:insta_mojo/widgets/story_banner_item.dart';

import '../data/storys.dart';

class StoryBanner extends StatelessWidget {
  const StoryBanner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: 90,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return index == 0
              ? StoryBannerItem(
                  60, 60, true, storys[index]['name'], storys[index]['image'])
              : StoryBannerItem(
                  60, 60, false, storys[index]['name'], storys[index]['image']);
        },
        scrollDirection: Axis.horizontal,
        itemCount: storys.length,
      ),
    );
  }
}
