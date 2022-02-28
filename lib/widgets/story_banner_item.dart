import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_mojo/widgets/circular_image.dart';

class StoryBannerItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool isYourStory;
  final double width;
  final double height;

  StoryBannerItem(this.width, this.height, this.isYourStory, this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isYourStory
            ? Stack(
                children: [
                  CircularImage(width, height, imageUrl),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          color: Colors.white,
                          child: Icon(
                            Icons.add_box,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 20,
                          )))
                ],
              )
            : CircularImage(width, height, imageUrl),
        const SizedBox(
          height: 5,
        ),
        FittedBox(
            child: isYourStory
                ? const Text(
                    'Your Story',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                : Text(
                    name,
                    style: const TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ))
      ],
    );
  }
}
