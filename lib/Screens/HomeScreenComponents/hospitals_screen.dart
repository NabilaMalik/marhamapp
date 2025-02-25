import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  final List<Map<String, String>> hospitals = [
    {

      "description": "24/7 Emergency, Specialist Care",
      "location": "Downtown, Main Street",
    },
    {

      "description": "Pediatrics, Cardiology, Neurology",
      "location": "Green Avenue, Block A",
    },
    {

      "description": "General OPD, Surgery, ICU",
      "location": "Westend Street, Sector 9",
    },
    {

      "description": "Maternity, Orthopedics, Diagnostics",
      "location": "Central Park, Zone 5",
    },
    {

      "description": "Mental Health, Physiotherapy",
      "location": "Sunshine Road, City Center",
    },
    {

      "description": "Cancer Treatment, Urology, Dialysis",
      "location": "Lakeside Area, Building 22",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100, // Light background color
      body: Padding(
        padding: EdgeInsets.only(top: 16.0,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hospitals",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  // children: [
                  //   Text(
                  //     "View all",
                  //     style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.w500),
                  //   ),
                  //   SizedBox(width: 5),
                  //   Icon(Icons.arrow_forward_ios, size: 16, color: Colors.blue),
                  // ],
                ),
              ],
            ),
            SizedBox(height: 10),
            // Scrollable Hospital List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hospitals.map((hospital) {
                  return _buildHospitalBox(hospital);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHospitalBox(Map<String, String> hospital) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 10), // Space between boxes
      width: 280, // Box width
      height: 100, // Box height
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade900, Colors.teal.shade300], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12), // ✅ Added rounded corners
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Side - Hospital Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   hospital["name"]!,
                //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                // ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_city_outlined, size: 22, color: Colors.white),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        hospital["description"]!,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 22, color: Colors.white),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        hospital["location"]!,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Right Side - Arrow
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
