import 'package:flutter/material.dart';
import 'package:marham/Screens/labs_screen.dart';

class HorizontalVerticalBoxesScreen extends StatelessWidget {
  const HorizontalVerticalBoxesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBox(context, "assets/images/download.jpg", "Labs", LabsScreen(testName: '',)),
                _buildBox(context, "assets/images/download.jpg", "Medicines", MedicinesScreen()),
                _buildBox(context, "assets/images/download (1).jpg", "Hospitals", HospitalsScreen()),
                _buildBox(context, "assets/images/download (2).jpg", "Blogs", BlogsScreen()),
              ],
            ),
          ),

          SizedBox(height: 10), // Space between horizontal and vertical boxes

          // Vertical Box
          Column(
            children: [
              _buildBoxCustomSize(
                "assets/images/doc.png",
                "Get free medical advice by asking a doctor",
                [
                  "Ask a question anonymously",
                  "Get a reply from PMC verified doctors",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// **Navigable Box Widget**
  Widget _buildBox(BuildContext context, String imagePath, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3, bottom: 24),
        child: Container(
          height: 66,
          width: 86,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  imagePath,
                  height: 39,
                  width: 86,
                ),
              ),
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
      ),
    );
  }

  /// **Custom Size Box Widget**
  Widget _buildBoxCustomSize(String imagePath, String title, List<String> points) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Container(
        height: 180,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade100,
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
        child: Padding(
          padding: EdgeInsets.only(top: 22.0, left: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.teal,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 7),

                    // List of text with tick icons
                    ...points.map((point) => Row(
                      children: [
                        Icon(Icons.check_outlined, color: Colors.green, size: 16),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            point,
                            style: TextStyle(fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )),
                    SizedBox(height: 24),

                    // Buttons
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.teal,
                              padding: EdgeInsets.symmetric(vertical: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("View All Questions", style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Learn More"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 12),

              // Image section (right)
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  imagePath,
                  height: 155,
                  width: 85,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// **Labs Screen**
// class LabsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Labs"), backgroundColor: Colors.teal),
//       body: Center(child: Text("Labs Information Here", style: TextStyle(fontSize: 18))),
//     );
//   }
// }

/// **Medicines Screen**
class MedicinesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Medicines"), backgroundColor: Colors.teal),
      body: Center(child: Text("Medicines Information Here", style: TextStyle(fontSize: 18))),
    );
  }
}

/// **Hospitals Screen**
class HospitalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hospitals"), backgroundColor: Colors.teal),
      body: Center(child: Text("Hospitals Information Here", style: TextStyle(fontSize: 18))),
    );
  }
}

/// **Blogs Screen**
class BlogsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blogs"), backgroundColor: Colors.teal),
      body: Center(child: Text("Blog Articles Here", style: TextStyle(fontSize: 18))),
    );
  }
}
