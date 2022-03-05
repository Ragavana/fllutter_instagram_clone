import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'reels_left_panel.dart';
import 'reels_right_pannel.dart';

class VideoPlayerItem extends StatefulWidget {
  final Size size;
  final reelsItem;
  const VideoPlayerItem(this.size, this.reelsItem, {Key? key})
      : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController? _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.reelsItem['videoUrl'])
      ..initialize().then((value) {
        _videoController!.play();
        _videoController!.setLooping(true);
        setState(() {
          isShowPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoController!.dispose();
  }

  Widget isPlaying() {
    return _videoController!.value.isPlaying && !isShowPlaying
        ? Container()
        : Icon(
            Icons.play_arrow,
            size: 80,
            color: Colors.white.withOpacity(0.5),
          );
  }

  // void checkVideo(){
  //   if(_videoController!.value.position == Duration(seconds: 0, minutes: 0, hours: 0)) {
  //     print('video Started');
  //   }
  //
  //   if(_videoController!.value.position == _videoController!.value.duration) {
  //     print('video Ended');
  //     if(!(widget.index+1==10)){
  //       widget.tabController.animateTo(widget.index+1);
  //     }else{
  //       widget.tabController.animateTo(0);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoController!.value.isPlaying
              ? _videoController!.pause()
              : _videoController!.play();
        });
      },
      child: RotatedBox(
        quarterTurns: -1,
        child: SizedBox(
            height: widget.size.height,
            width: widget.size.width,
            child: Stack(
              children: <Widget>[

                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Stack(
                    children: <Widget>[
                      VideoPlayer(_videoController!),
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: isPlaying(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 20, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // HeaderHomePage(),
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            LeftPanel(
                              profileImg: "${widget.reelsItem["albumImg"]}",
                              size: widget.size,
                              name: "${widget.reelsItem["name"]}",
                              caption: "${widget.reelsItem["caption"]}",
                              songName: "${widget.reelsItem["songName"]}",
                            ),
                            RightPanel(
                              size: widget.size * 0.5,
                              likes: "${widget.reelsItem["likes"]}",
                              comments: "${widget.reelsItem["comments"]}",
                              shares: "${widget.reelsItem["shares"]}",
                              profileImg: "${widget.reelsItem["profileImg"]}",
                              albumImg: "${widget.reelsItem["albumImg"]}",
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    height: 100,
                    width: widget.size.width,
                    child: AppBar(
                      backgroundColor: null,
                      title: Text('ggslkgshfskl'),
                    )),

              ],
            )),
      ),
    );
  }
}
