import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

// using chewie
class VideoScreen extends StatefulWidget {
  const VideoScreen({
    required this.index,
    required this.imageUrl,
  });

  final int index;
  final String imageUrl;

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    // ..initialize().then((_) {
    //   // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //   setState(() {});
    // });
    // wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
        videoPlayerController: _controller,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        looping: false,
        autoPlay: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // print(_controller.value.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(_controller.dataSource.split('/').last),
      ),
      body: Center(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("Disposing of video controller...");
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }
}
