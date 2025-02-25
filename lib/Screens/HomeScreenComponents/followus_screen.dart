import 'package:flutter/material.dart';

class FollowusScreen extends StatelessWidget {
  final List<Map<String, dynamic>> links = [
    {"image": "assets/images/youtube.png", "text": "2.01M Subscribe", "boxSize": 120.0, "imageSize": 80.0},
    {"image": "assets/images/fb.png", "text": "2.01M Subscribe", "boxSize": 110.0, "imageSize": 70.0},
    {"image": "assets/images/insta.jpg", "text": "2.01M Subscribe", "boxSize": 130.0, "imageSize": 85.0},
    {"image": "assets/images/TIKTOK.jpg", "text": "2.01M Subscribe", "boxSize": 100.0, "imageSize": 65.0},

  ];

   FollowusScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the screen
      body: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align left & right
                  children: [
                    Text(
                      "Follow Us",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                SizedBox(height: 10),
              ],
            ),

            SizedBox(height: 10),
            // Scrollable Row
            SingleChildScrollView(
              //scrollDirection: Axis.horizontal,
              child: Row(
                children: links.map((symptom) {
                  return _buildSymptomBox(
                    symptom["image"]!,
                    symptom["text"]!,
                    // symptom["boxSize"]!,
                    //symptom["imageSize"]!,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSymptomBox(String imagePath, String text,) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 26),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(31),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(2, 3),
              ),
            ],
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22), // Make image circular
              child: Image.asset(
                imagePath,
                width: 40, // Custom width for each image
                height: 40, // Custom height for each image
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500,color: Colors.blue),
        ),
      ],
    );
  }
}
