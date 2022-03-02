import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_mojo/utils/my_icons_icons.dart';
import 'package:octo_image/octo_image.dart';
import 'package:shimmer/shimmer.dart';

import '../model/Feed.dart';

class FeedBanner extends StatelessWidget {
  final Feed _feed;
  final double contentHeight;
  FeedBanner(this.contentHeight,this._feed);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shadowColor: Colors.grey.shade300,
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              //Header
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 5),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              image: DecorationImage(
                                  image: Image.network(_feed.avatar).image,
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          color: Colors.grey.shade100,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            _feed.user_name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'Gilroy'),
                          ),
                        ),
                        Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              //Feed Image
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: OctoImage(
                    height: contentHeight * .45,
                    width: double.infinity,
                    image: CachedNetworkImageProvider(_feed.image),
                    placeholderBuilder: OctoPlaceholder.blurHash(
                      'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
                    ),
                    errorBuilder: OctoError.icon(color: Colors.red),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Action container
              Container(
                color: Colors.grey.shade100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            color: Colors.grey.shade100,
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                            child: const Icon(
                              MyIcons.heart,
                              size: 24,
                              color: Colors.black,
                            )),
                        Container(
                            color: Colors.grey.shade100,
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                            child: const Icon(
                              MyIcons.share,
                              size: 18,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.messenger_outline,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              //likes count text
              Container(
                color: Colors.grey.shade100,
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '${_feed.like_count.toString()} likes',
                        style: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Text(
                            _feed.user_name.toString(),
                            style: const TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          const Text(
                            ' Sunday lunch for once',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'view all ${_feed.comment_count.toString()} comments',
                        style: const TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // comments section
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 7),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.network(_feed.avatar).image,
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const Text(
                          'Add a comment...',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(
                            MyIcons.heart_fill,
                            size: 10,
                            color: Colors.redAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.amber,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.ac_unit_sharp,
                            size: 10,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
