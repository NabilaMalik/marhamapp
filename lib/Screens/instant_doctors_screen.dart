import 'package:flutter/material.dart';

class InstantDoctorsScreen extends StatelessWidget {
  const InstantDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of doctors with different images and details
    final List<Map<String, String>> doctors = [
      {
        'image': 'assets/images/downloadDocC.png',
        'name': 'Dr. Sarah Khan',
        'specialty': 'Dermatologist',
        'experience': '8 yrs',
        'fee': 'Rs. 2000',
      },
      {
        'image': 'assets/images/imagess.jpg',
        'name': 'Dr. Ahmed Ali',
        'specialty': 'Neurologist',
        'experience': '12 yrs',
        'fee': 'Rs. 3000',
      },
      {
        'image': 'assets/images/smiling-korean.jpg',
        'name': 'Dr. Maria Iqbal',
        'specialty': 'Pediatrician',
        'experience': '6 yrs',
        'fee': 'Rs. 1800',
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          // Background Image with height and width control
          Positioned.fill(
            child: Image.asset(
              'assets/images/wallpaper.jpg', // Ensure this image is in assets
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          Column(
            children: [
              const SizedBox(height: 10), // Space from top

              // Title with Padding
              const Padding(
                padding: EdgeInsets.only(right: 230.0),
                child: Text(
                  "Instant Doctors",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20), // Space below text

              // Row with three horizontal boxes
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: doctors.map((doctor) {
                    return Container(
                      width: 270,
                      height: 135,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(12), // Adjusted padding
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white.withOpacity(0.8), Colors.teal.withOpacity(0.22)], // Adjust colors
                          begin: Alignment.topLeft,  // Gradient start position
                          end: Alignment.bottomRight, // Gradient end position
                        ),
                        borderRadius: BorderRadius.circular(12), // More rounded
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          // Left Image with Rounded Corners
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              doctor['image']!,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(width: 12), // Spacing

                          // Text Content on the Right
                          // Inside the Expanded Column (where text and button are)
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  doctor['name']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  doctor['specialty']!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Experience: ${doctor['experience']}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  doctor['fee']!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                const SizedBox(height: 0), // Adjusted spacing

                                // Star Icon & Call Button in a Row
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // ⭐ Star Icon at Bottom Left
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow.shade700, size: 15),
                                        Text('4.1',style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),),
                                      ],
                                    ),

                                    // 📞 Call Now Button at Bottom Right
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        // Implement Call functionality here
                                        // Implement Call functionality here
                                      },
                                      icon: const Icon(Icons.phone, size: 16, color: Colors.white),
                                      label: const Text("Call Now"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.redAccent.shade700,
                                        foregroundColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                                        textStyle: const TextStyle(fontSize: 12),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
