import 'package:flutter/material.dart';

class LeftPanel extends StatelessWidget {
  final String profileImg;
  final String name;
  final String caption;
  final String songName;

  const LeftPanel({
    required this.profileImg,
    required this.size,
    required this.name,
    required this.caption,
    required this.songName,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profileImg),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.check_circle,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.5),
                      borderRadius: BorderRadius.circular(3)),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  songName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
