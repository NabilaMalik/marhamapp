import 'package:flutter/material.dart';
import 'package:marham/Screens/appointment_screen.dart';

void main() {
  runApp(MaterialApp(
    home: DoctorsScreen(),
  ));
}

class DoctorsScreen extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      "name": "Dr. John Doe",
      "specialization": "Physician",
      "experience": "36 years of experience",
      "image": "assets/images/downloadDoc.png"
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
      backgroundColor: Colors.teal.shade100,
      // appBar: AppBar(
      //   title: Text("Doctors"),
      //   backgroundColor: Colors.teal.shade700,
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            // Scrollable Doctor List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: doctors.map((doctor) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to Doctor Details Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorDetailScreen(doctor: doctor),
                        ),
                      );
                    },
                    child: _buildDoctorBox(doctor),
                  );
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
      margin: EdgeInsets.only(top: 8, right: 10),
      width: 280,
      height: 100,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade900, Colors.teal.shade300],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
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
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              doctor["image"] ?? "",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10), // Spacing between image and text

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

// Doctor Detail Screen
class DoctorDetailScreen extends StatelessWidget {
  final Map<String, String> doctor;

  const DoctorDetailScreen({required this.doctor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor["name"] ?? "Doctor Details"),
        backgroundColor: Colors.teal.shade700,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Doctor Image
            ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Image.asset(
                doctor["image"] ?? "",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Doctor Name
            Text(
              doctor["name"] ?? "Unknown",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Specialization
            Text(
              doctor["specialization"] ?? "Specialization not available",
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),

            // Experience
            Text(
              doctor["experience"] ?? "Experience not available",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),

            // Book Appointment Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Appointment Screen (Replace with your Appointment Page)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text("Book Appointment"),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Appointment Screen
// class AppointmentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Appointment Booking"),
//         backgroundColor: Colors.teal.shade700,
//       ),
//       body: Center(
//         child: Text(
//           "Appointment Booking Page",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
