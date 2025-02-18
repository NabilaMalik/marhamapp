import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoTextScreen extends StatefulWidget {
  const VideoTextScreen({super.key});

  @override
  _VideoTextScreenState createState() => _VideoTextScreenState();
}

class _VideoTextScreenState extends State<VideoTextScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/Screen_recording.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      }).catchError((e) {
        print("Error initializing video: $e");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Side: Texts (Vertical) with padding
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Why Medical",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildTextItem("1. PMC Verified Doctors", "16,000+ Doctors Available"),
                    _buildTextItem("2. 15/7 Customer Support", "Well Trained & Supportive Team"),
                    _buildTextItem("3. Secure Online Payments", "SSL-encrypted"),
                  ],
                ),
              ),

              // Right Side: Video Player with Red Background and Frame
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _controller.value.isInitialized
                          ? ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Border radius for the frame
                        child: Container(
                          decoration: BoxDecoration(
                          //  color: Colors.black, // Background color of the container
                            borderRadius: BorderRadius.circular(16), // Border radius for the frame
                            border: Border.all(
                              color: Colors.black, // Border color (frame color)
                              width: 4, // Border width
                            ),
                          ),
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        ),
                      )
                          : Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Text item builder for left side (Vertical text)
  Widget _buildTextItem(String firstLine, String secondLine) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstLine,
            style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              secondLine,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
