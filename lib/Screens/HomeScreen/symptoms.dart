import 'package:flutter/material.dart';
import 'package:marham/Screens/HomeScreen/choose_speciality_screen.dart';

class SymptomsScreen extends StatelessWidget {
  final String title;
  final String viewAllText;
  final IconData? viewAllIcon;
  final Color bgColor;
  final bool showViewMore; // Flag to control "View More" visibility

  final List<Map<String, dynamic>> symptoms = [
    {"image": "assets/images/fever.png", "text": "Fever"},
    {"image": "assets/images/cough.png", "text": "Cough"},
    {"image": "assets/images/fever.png", "text": "Headache"},
    {"image": "assets/images/cough.png", "text": "Cold"},
    {"image": "assets/images/fever.png", "text": "Fatigue"},
    {"image": "assets/images/cough.png", "text": "Body Pain"},
  ];

  SymptomsScreen({
    super.key,
    this.title = "Symptoms",
    this.viewAllText = "View all",
    this.viewAllIcon,
    this.bgColor = Colors.white, // Set a default color
    this.showViewMore = true, // Default to true, can be changed per screen
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      viewAllText,
                      style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 5),
                    Icon(viewAllIcon, size: 16, color: Colors.grey),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Scrollable row of symptoms
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Symptoms Boxes
                  ...symptoms.map((symptom) {
                    return _buildSymptomBox(
                      symptom["image"]!,
                      symptom["text"]!,
                    );
                  }).toList(),

                  // View More Box (Fixed)
                  if (showViewMore) _buildViewMoreBox(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSymptomBox(String imagePath, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      width: 105,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor, // Now properly using Color type
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white, // Background for better image contrast
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.teal, // Ensure text is visible on colored background
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildViewMoreBox(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChooseSpecialityScreen()), // Replace with your new page
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        width: 110,
        height: 105,
        decoration: BoxDecoration(
          color: Colors.teal.shade900, // Background color
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.double_arrow, size: 20, color: Colors.white),
              SizedBox(height: 5),
              Text(
                "View More",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
