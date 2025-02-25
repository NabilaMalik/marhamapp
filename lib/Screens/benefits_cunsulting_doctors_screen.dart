import 'package:flutter/material.dart';

class BenefitsConsultingDoctorsScreen extends StatelessWidget {
  const BenefitsConsultingDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.cyan.shade700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Avail ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextSpan(
                      text: "10%",
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                    ),
                    TextSpan(
                      text: " patient Care Relief",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                textAlign: TextAlign.start,
              ),
            ),

            const SizedBox(height: 0),
            const Text(
              "on your next physical appointment by paying online.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  // Left Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/Asset.png',
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 50), // Space between image and text

                  // Right Side Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Book a doctor by selecting:",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(height: 4),

                      // First Row with Bullets
                      Row(
                        children: const [
                          Text("• ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text(
                            "Symptoms",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                          SizedBox(width: 35),
                          Text("• ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text(
                            "Specialties",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ],
                      ),

                      const SizedBox(height: 4),

                      // Second Row with Bullets
                      Row(
                        children: const [
                          Text("• ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text(
                            "Diseases",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                          SizedBox(width: 43),
                          Text("• ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text(
                            "Hospitals",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyColumnScreen extends StatelessWidget {
  const MyColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/wallpaper.jpg', // Ensure this image exists in assets
              fit: BoxFit.cover,
            ),
          ),

          // Dark Overlay for Better Text Visibility
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Centered Column with Padding
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Added Padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                mainAxisSize: MainAxisSize.min, // Wraps column to its content
                children: [
                  const Text(
                    "Benefits of Consulting Doctors Online",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 10), // Increased spacing

                  // First Row of Benefits
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BulletPointText("100% Secure Consultation"),
                      BulletPointText("Free Chat Follow Ups"),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Second Row of Benefits
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BulletPointText("Instant Medical Advice"),
                      BulletPointText("Online Reports Sharing"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPointText extends StatelessWidget {
  final String text;
  const BulletPointText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "✔ ",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellow),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    );
  }
}


