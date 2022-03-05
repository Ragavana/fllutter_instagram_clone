import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_mojo/utils/my_icons_icons.dart';
import 'package:insta_mojo/widgets/circular_image.dart';

class RightPanel extends StatelessWidget {
  final String likes;
  final String comments;
  final String shares;
  final String profileImg;
  final String albumImg;
   RightPanel({
    required this.size,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.profileImg,
    required this.albumImg,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: Cross,
              children: <Widget>[
                // getProfile(context,profileImg),
                getIcons(MyIcons.heart, likes, 25.0),
                getIcons(Icons.chat_bubble, comments, 27.0),
                getIcons(MyIcons.share, shares, 25.0),
                getIcons(Icons.more_vert_sharp, '', 25.0),
                CircularImage(40, 40, albumImg)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget getAlbum(albumImg) {
  return Container(
    width: 50,
    height: 50,
    decoration: const BoxDecoration(
        // shape: BoxShape.circle,
        // color: black
        ),
    child: Stack(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        ),
        Center(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(albumImg), fit: BoxFit.cover)),
          ),
        )
      ],
    ),
  );
}

Widget getIcons(icon, count, size) {
  return Column(
    children: <Widget>[
      Icon(icon, color: Colors.white, size: size),
      const SizedBox(
        height: 5,
      ),
      Text(
        count,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w700),
      )
    ],
  );
}

Widget getProfile(context, String profileImg) {
  return Container(
    width: 50,
    height: 60,
    child: Stack(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(profileImg), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 3,
            left: 18,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor),
              child: const Center(
                  child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              )),
            ))
      ],
    ),
  );
}
