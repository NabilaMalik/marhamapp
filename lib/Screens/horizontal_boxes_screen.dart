import 'package:flutter/material.dart';

class HorizontalVerticalBoxesScreen extends StatelessWidget {
  const HorizontalVerticalBoxesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Horizontal Scrollable Boxes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Enables horizontal scrolling
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBox("assets/images/download.jpg", "Labs"),
                _buildBox("assets/images/download.jpg", "Medicines"),
                _buildBox("assets/images/download (1).jpg", "Hospitals"),
                _buildBox("assets/images/download (2).jpg", "Blogs"),
              ],
            ),
          ),

          SizedBox(height: 0), // Space between horizontal and vertical boxes

          // Vertical Boxes
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBoxCustomSize("assets/images/lab.jpg", "Diagnostics"),


            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBox(String imagePath, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Container(
        height: 66, // Box height
        width: 83, // Box width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                imagePath,
                height: 39, // Image height
                width: 80, // Image width

              ),
            ),
            SizedBox(height: 5), // Space between image and text
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
          ],

        ),


      ),
    );
  }
  Widget _buildBoxCustomSize(String imagePath, String text) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 88, // Custom height
        width: 290, // Custom width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 3),
            ),
          ],
        ),
        child: Row( // ✅ Use Row to place text and image side by side
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push text left & image right
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0), // Add some space
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ), // Round only right corners
              child: Image.asset(
                imagePath,
                height: 40, // Adjust image height
                width: 40, // Adjust image width
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
