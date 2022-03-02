import 'package:flutter/material.dart';
import 'package:insta_mojo/widgets/feed_banner.dart';

import '../model/Feed.dart';
import '../widgets/story_banner.dart';

class HomeScreen extends StatelessWidget {
  List<Feed> myFeeds = [
    Feed(
        avatar: "https://randomuser.me/api/portraits/men/3.jpg",
        user_name: "Louisa Rodriguez",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "3 hour ago",
        image:
            "https://images.pexels.com/photos/812258/pexels-photo-812258.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 23000,
        comment_count: 184),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/35.jpg",
        user_name: "Shelly Cook",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "6 hour ago",
        image:
            "https://images.pexels.com/photos/1868991/pexels-photo-1868991.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 2300,
        comment_count: 224),
    Feed(
        avatar: "https://randomuser.me/api/portraits/med/women/27.jpg",
        user_name: "Louisa Rodriguez",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "10 hour ago",
        image:
            "https://images.pexels.com/photos/812258/pexels-photo-812258.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 23000,
        comment_count: 184),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/75.jpg",
        user_name: "Bobby Fuller",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "10 hour ago",
        image:
            "https://images.pexels.com/photos/2808658/pexels-photo-2808658.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 6000,
        comment_count: 84),
    Feed(
        avatar: "https://randomuser.me/api/portraits/men/87.jpg",
        user_name: "Brian Hansen",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "11 hour ago",
        image:
            "https://images.pexels.com/photos/2943909/pexels-photo-2943909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 2300,
        comment_count: 554),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/35.jpg",
        user_name: "Alicia Anderson",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "5 hour ago",
        image:
            "https://images.pexels.com/photos/2249172/pexels-photo-2249172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 3400,
        comment_count: 784),
    Feed(
        avatar: "https://randomuser.me/api/portraits/men/3.jpg",
        user_name: "Louisa Rodriguez",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "4 hour ago",
        image:
            "https://images.pexels.com/photos/812258/pexels-photo-812258.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 23000,
        comment_count: 184),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/35.jpg",
        user_name: "Shelly Cook",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "12 hour ago",
        image:
            "https://images.pexels.com/photos/1868991/pexels-photo-1868991.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 300,
        comment_count: 24),
    Feed(
        avatar: "https://randomuser.me/api/portraits/med/women/27.jpg",
        user_name: "Louisa Rodriguez",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "1 day ago",
        image:
            "https://images.pexels.com/photos/812258/pexels-photo-812258.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 4567,
        comment_count: 984),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/75.jpg",
        user_name: "Bobby Fuller",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "4 hour ago",
        image:
            "https://images.pexels.com/photos/2808658/pexels-photo-2808658.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 78000,
        comment_count: 8994),
    Feed(
        avatar: "https://randomuser.me/api/portraits/men/87.jpg",
        user_name: "Brian Hansen",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "3 hour ago",
        image:
            "https://images.pexels.com/photos/2943909/pexels-photo-2943909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 68830,
        comment_count: 54),
    Feed(
        avatar: "https://randomuser.me/api/portraits/women/35.jpg",
        user_name: "Alicia Anderson",
        location: "Toronto CA",
        comment:
            "Hi Guys… I’m working on a project about edit \nimages in Adobe Lightroom",
        post_time: "6 hour ago",
        image:
            "https://images.pexels.com/photos/2249172/pexels-photo-2249172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        like_count: 340066,
        comment_count: 984)
  ];

  final double contentHeight;

  HomeScreen(this.contentHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: contentHeight,
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade100,
              child: const StoryBanner(),
              height: contentHeight * 0.14,
            ),
            Divider(
              thickness: 2,
              height: contentHeight * 0.01,
              color: Colors.grey.shade200,
            ),
            Container(
                height: contentHeight * 0.75,
                color: Colors.grey.shade100,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return FeedBanner(contentHeight, myFeeds[index]);
                  },
                  itemCount: myFeeds.length,
                )),
          ],
        ),
      ),
    );
  }
}
