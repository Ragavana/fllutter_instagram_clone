import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  CircularImage(this.width, this.height, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(240, 132, 69, 1),
            Color.fromRGBO(238, 42, 109, 1)
          ])),
      child: Container(
        margin: const EdgeInsets.all(2),
        padding:  const EdgeInsets.all(3),
        height: height-5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(.5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: OctoImage(
              height: height -5,
              width: width -5,
              image: CachedNetworkImageProvider(imageUrl),
              placeholderBuilder: OctoPlaceholder.blurHash(
                'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
              ),
              errorBuilder: OctoError.icon(color: Colors.red),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.all(.5),
        //   height: height-5,
        //   width: width-5,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     image:  DecorationImage(
        //       image: Image.network(imageUrl).image,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
