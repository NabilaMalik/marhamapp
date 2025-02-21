import 'package:flutter/material.dart';
import 'package:marham/Screens/HomeScreen/choose_speciality_screen.dart';

class SpecialitiesScreen extends StatelessWidget {
  final String title;
  final String viewAllText;
  final IconData? viewAllIcon;
  final Color bgColor;
  final bool showViewMore;

  final List<Map<String, dynamic>> topDiseases = [
    {"image": "assets/images/download.jpeg", "text": "Diabetes"},
    {"image": "assets/images/hypertension.jpeg", "text": "Hypertension"},
    {"image": "assets/images/migraine.jpeg", "text": "Migraine"},
    {"image": "assets/images/download.jpeg", "text": "Asthma"},
    {"image": "assets/images/hypertension.jpeg", "text": "Arthritis"},
    {"image": "assets/images/migraine.jpeg", "text": "Cancer"},
    {"image": "assets/images/download.jpeg", "text": "Heart Disease"},
    {"image": "assets/images/hypertension.jpeg", "text": "Kidney Disease"},
  ];


  SpecialitiesScreen({
    super.key,
    this.title = " ",
    this.viewAllText = "View all",
    this.viewAllIcon = Icons.arrow_forward_ios,
    this.bgColor = Colors.white,
    this.showViewMore = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...topDiseases.map((disease) {
                    return _buildDiseasesBox(
                      disease["image"]!,
                      disease["text"]!,
                    );
                  }).toList(),
                  if (showViewMore) _buildViewMoreBox(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildDiseasesBox(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 110,
      height: 105,
      decoration: BoxDecoration(
        color: bgColor,
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
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
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

  Widget _buildViewMoreBox(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChooseSpecialityScreen()),
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
