import 'package:flutter/material.dart';
import 'package:marham/Screens/find_doctor_screen.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'How can we help you today?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildConsultationBox(
                  context,
                  title: "Video Consultation",
                  subtitle: "PMC Verified Doctors",
                  imagePath: 'assets/images/downloadDoc.png',
                  boxHeight: 190,
                  boxWidth: 150,
                  imageHeight: 125,
                  imageWidth: 90,
                  bgColor: Colors.cyan.shade50,
                  isImageRight: false,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      _buildConsultationBox(
                        context,
                        title: "In-Clinic Visit",
                        subtitle: "Book Appointment",
                        imagePath: 'assets/images/doc.png',
                        boxHeight: 88,
                        boxWidth: 200,
                        imageHeight: 77,
                        imageWidth: 60,
                        bgColor: Colors.deepOrangeAccent.shade100,
                        isImageRight: true,
                      ),
                      SizedBox(height: 10),
                      _buildConsultationBox(
                        context,
                        title: "INSTANT DOCTOR",
                        subtitle: "The Fast Way To Health",
                        imagePath: 'assets/images/male-doctor-.webp',
                        boxHeight: 88,
                        boxWidth: 200,
                        imageHeight: 77,
                        imageWidth: 55,
                        bgColor: Colors.greenAccent.shade100,
                        isImageRight: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildConsultationBox(
                  context,
                  title: "Weight Loss",
                  subtitle: "Healthy Lifestyle",
                  imagePath: 'assets/images/images.png',
                  boxHeight: 88,
                  boxWidth: 150,
                  imageHeight: 60,
                  imageWidth: 49,
                  bgColor: Colors.limeAccent.shade100,
                  isImageRight: true,
                ),
                _buildConsultationBox(
                  context,
                  title: "Care Program",
                  subtitle: "Subscription Plan",
                  imagePath: 'assets/images/family.png',
                  boxHeight: 88,
                  boxWidth: 200,
                  imageHeight: 77,
                  imageWidth: 78,
                  bgColor: Colors.blueAccent.shade100,
                  isImageRight: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsultationBox(
      BuildContext context, {
        required String title,
        required String subtitle,
        required String imagePath,
        required double boxHeight,
        required double boxWidth,
        required double imageHeight,
        required double imageWidth,
        required Color bgColor,
        required bool isImageRight,
      }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FindDoctorPage()),
        );
      },
      child: Container(
        height: boxHeight,
        width: boxWidth,
        padding: EdgeInsets.only(top: 12, left: 10, right: 10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(2, 3),
            ),
          ],
        ),
        child: isImageRight
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                imagePath,
                height: imageHeight,
                width: imageWidth,
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 9,
                color: Colors.grey.shade700,
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  imagePath,
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text("Details about $title")),
    );
  }
}
