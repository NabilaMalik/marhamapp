import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      "name": "Dr. John Doe",
      "specialization": "Physician",
      "experience": "36 years of experience",
      "image": "assets/images/downloadDoc.png" // Replace with actual image URL
    },
    {
      "name": "Dr. Emily Clark",
      "specialization": "Dentist",
      "experience": "20 years of experience",
      "image": "assets/images/downloadDoc.png"
    },
    {
      "name": "Dr. Alex Smith",
      "specialization": "Physician",
      "experience": "25 years of experience",
      "image": "assets/images/downloadDoc.png"
    },
    {
      "name": "Dr. Lisa Brown",
      "specialization": "Orthopedic Surgeon",
      "experience": "15 years of experience",
      "image": "assets/images/downloadDoc.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100, // Light background color
      body: Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctors",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Scrollable Doctor List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: doctors.map((doctor) {
                  return _buildDoctorBox(doctor);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorBox(Map<String, String> doctor) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 10), // Space between boxes
      width: 280, // Box width
      height: 100, // Adjusted height
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade900, Colors.teal.shade300], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12), // ✅ Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Doctor Image with Border Radius
          ClipRRect(
            borderRadius: BorderRadius.circular(50), // Circular border
            child: Image.asset(
              doctor["image"] ?? "",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 2), // Spacing between image and text

          // Doctor Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  doctor["name"] ?? "Unknown",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  doctor["specialization"] ?? "Specialization not available",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 4),
                Text(
                  doctor["experience"] ?? "Experience not available",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
