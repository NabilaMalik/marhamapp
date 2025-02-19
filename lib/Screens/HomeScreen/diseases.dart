import 'package:flutter/material.dart';

class DiseasesScreen extends StatelessWidget {
  final String title;
  final String viewAllText;
  final IconData? viewAllIcon;
  final Color bgColor;
  final bool showViewMore; // Flag to control "View More" visibility

  final List<Map<String, dynamic>> diseases = [
    {"image": "assets/images/unnamed.jpg", "text": "Diabetes"},
    {"image": "assets/images/stomach.avif", "text": "Hypertension"},
    {"image": "assets/images/unnamed.jpg", "text": "Migraine"},
    {"image": "assets/images/stomach.avif", "text": "Asthma"},
    {"image": "assets/images/unnamed.jpg", "text": "Arthritis"},
    {"image": "assets/images/stomach.avif", "text": "Cancer"},
  ];

  DiseasesScreen({
    super.key,
    this.title = "Diseases",
    this.viewAllText = "View all",
    this.viewAllIcon = Icons.arrow_forward_ios,
    this.bgColor = Colors.white, // Default color if none provided
    this.showViewMore = true, // Default to true, can be changed per screen
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the screen
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// **Title and View All Row**
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      viewAllText,
                      style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 5),
                    Icon(viewAllIcon, size: 16, color: Colors.grey),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            /// **Scrollable Diseases List**
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  /// **Disease Boxes**
                  ...diseases.map((disease) {
                    return _buildDiseasesBox(
                      disease["image"]!,
                      disease["text"]!,
                    );
                  }).toList(),

                  /// **View More Box (Only if showViewMore is true)**
                  if (showViewMore) _buildViewMoreBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// **Diseases Box Widget**
  Widget _buildDiseasesBox(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 110,
      height: 105,
      decoration: BoxDecoration(
        color: bgColor, // Dynamic background color
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// **Disease Image**
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white, // Background for better image contrast
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(2, 3),
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
          const SizedBox(height: 5),

          /// **Disease Name**
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.teal,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// **View More Box Widget**
  Widget _buildViewMoreBox() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 110,
      height: 105,
      decoration: BoxDecoration(
        color: Colors.cyan.shade900, // Grey background for distinction
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
    );
  }
}
