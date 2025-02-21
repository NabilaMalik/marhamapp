import 'package:flutter/material.dart';
import 'package:marham/Screens/instant_doctors_screen.dart';

class SpecialityDetailScreen extends StatelessWidget {
  final String specialityName;
  const SpecialityDetailScreen({
    super.key,
    required this.specialityName,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          specialityName,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade700,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 0, right: 0, bottom: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔍 Search Bar
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Doctors by Name",
                      prefixIcon: const Icon(Icons.search, color: Colors.teal),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 0),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      DoctorCard(
                        imagePath: "assets/images/images.jpeg",
                        doctorName: "Dr. Usman Tariq",
                        specialty: specialityName,
                        qualification: "MBBS, FCPS",
                        expertise: "Hair Transplant & PRP",
                      ),
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 🏆 Doctor Stats Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: const [
                                  Text("Patients", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("8+", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Experience", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("1 year", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Satisfaction", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("100%", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 250,
                                  height: 100,
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.videocam_outlined, color: Colors.teal, size: 20),
                                          SizedBox(width: 5),
                                          Text("Video Consultation", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 2500",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          SizedBox(width: 5),
                                          Text("Ayub Teaching Hospital", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 6),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 3,000",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 19),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // 🔴 Video Consultation Button with Icon
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red, // Red background
                                  foregroundColor: Colors.white, // White text
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.videocam_outlined, size: 18, color: Colors.white),
                                label: const Text(
                                  "Video Consultation",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),

                              // 🔵 View Profile Button with Icon
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade900,
                                  foregroundColor: Colors.white, // White text
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.person_outline, size: 18, color: Colors.white),
                                label: const Text(
                                  "View Profile",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),
                    ],
                  ),
                ),  Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      DoctorCard(
                        imagePath: "assets/images/smiling-korean.jpg",
                        doctorName: "Dr. Momna",
                        specialty: specialityName,
                        qualification: "FCPS, MBBS",
                        expertise: "Hair Transplant & PRP",
                      ),
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 🏆 Doctor Stats Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: const [
                                  Text("Patients", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("40+", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Experience", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("1 year", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Satisfaction", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("100%", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 250,
                                  height: 100,
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.videocam_outlined, color: Colors.teal, size: 20),
                                          SizedBox(width: 5),
                                          Text("Video Consultation", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 2500",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          SizedBox(width: 5),
                                          Text("Imran Address Hospital", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 35,00",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 19),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red, // Red background
                                  foregroundColor: Colors.white, // White text
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.videocam_outlined, size: 18, color: Colors.white),
                                label: const Text(
                                  "Video Consultation",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade900,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.person_outline, size: 18, color: Colors.white),
                                label: const Text(
                                  "View Profile",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      DoctorCard(
                        imagePath: "assets/images/imagess.jpg",
                        doctorName: "Dr. Asad Ali",
                        specialty: specialityName,
                        qualification: "MBBS, FCPS",
                        expertise: "Hair Transplant & PRP",
                      ),
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 🏆 Doctor Stats Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: const [
                                  Text("Patients", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("8+", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Experience", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("1 year", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Satisfaction", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                  Text("100%", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 250,
                                  height: 100,
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.videocam_outlined, color: Colors.teal, size: 20),
                                          SizedBox(width: 5),
                                          Text("Video Consultation", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 2500",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  padding: const EdgeInsets.only(top: 8, left: 9, right: 9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          SizedBox(width: 5),
                                          Text("  Complex Hospital", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.access_time, color: Colors.teal, size: 16),
                                          const SizedBox(width: 5),
                                          Text(
                                            "Time: 10:00 AM - 5:00 PM",
                                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      const Text("Available Now", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 2),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Rs. 3,000",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.shade900, fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 19),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.videocam_outlined, size: 18, color: Colors.white), // 🎥 Video Call Icon
                                label: const Text(
                                  "Video Consultation",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade900,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {

                                },
                                icon: const Icon(Icons.person_outline, size: 18, color: Colors.white),
                                label: const Text(
                                  "View Profile",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                          ),

                        ],

                      ),

                    ],

                  ),

                ),
                SizedBox(height: 220,
                  width: double.infinity,
                  child: InstantDoctorsScreen(),
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 🎯 Reusable Doctor Card Widget
class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String qualification;
  final String expertise;

  const DoctorCard({
    Key? key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.qualification,
    required this.expertise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctorName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            Text(
              specialty,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              qualification,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
                expertise,
                style: const TextStyle(fontSize: 14, color: Colors.black54)),
          ],
        ),
      ],
    );
  }
}
