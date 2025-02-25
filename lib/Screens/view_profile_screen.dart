import 'package:flutter/material.dart';
import 'package:marham/Screens/spaciality_detail_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String specialityName;

  const ProfileScreen({
    super.key,
    required this.specialityName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Profile",style: TextStyle(fontSize: 19,color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture & Info
            DoctorCard(
              imagePath: "assets/images/images.jpeg",
              doctorName: "Dr. Usman Tariq",
              specialty: specialityName,
              qualification: "MBBS, FCPS",
              expertise: "Hair Transplant & PRP",
            ),
            const SizedBox(height: 12),

            // Doctor Stats Row
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatColumn(Icons.people, "Patients", "8+"),
                    _buildStatColumn(Icons.work, "Experience", "1 year"),
                    _buildStatColumn(Icons.star, "Satisfaction", "100%"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Additional Information Section with Borders
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.teal, width: 1), // Border for the whole section
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Additional Information",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  const SizedBox(height: 8),

                  // Vertical Information List with Borders
                  Column(
                    children: [
                      _buildInfoRow(Icons.video_call_outlined, "Video Call Available", price: "Rs. 2,000"),
                      _buildInfoRow(Icons.calendar_today, "Available Days: Mon - Fri"),
                      _buildInfoRow(Icons.access_time, "Timing: 10 AM - 5 PM"),
                      _buildInfoRow(Icons.online_prediction, "Online"),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // About Doctor Section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About Me",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Dr. Usman Tariq is a distinguished hair transplant specialist with a reputation for excellence in the field of aesthetic and regenerative medicine. "
                  "Holding an MBBS and FCPS, he has dedicated years to mastering advanced techniques in Hair Transplantation and Platelet-Rich Plasma (PRP) Therapy. "
                  "His expertise spans a wide range of modern hair restoration solutions, ensuring patients receive the most effective and innovative treatments available. \n\n"

                  "With a strong passion for transforming lives, Dr. Usman has helped countless individuals regain their confidence by restoring natural-looking hair growth. "
                  "He believes that hair restoration is not just about aesthetics but also about improving a person’s overall self-esteem and well-being. "
                  "His approach is rooted in precision, care, and a deep understanding of individual patient needs, making each treatment plan fully personalized. \n\n"

                  "Over the years, Dr. Usman has gained extensive experience in performing both **FUE (Follicular Unit Extraction) and FUT (Follicular Unit Transplantation)** procedures, "
                  "catering to patients with different types and stages of hair loss. His expertise also extends to **PRP therapy**, a cutting-edge technique that stimulates hair regrowth using the body's natural healing properties. "
                  "By combining medical expertise with state-of-the-art technology, he ensures **minimal discomfort, faster recovery, and long-lasting results**. \n\n"

                  "Apart from his medical practice, Dr. Usman is an avid researcher and continuously updates his skills with the latest advancements in trichology and regenerative medicine. "
                  "He actively participates in international conferences and workshops, learning from top experts in the field to integrate the newest, most effective solutions into his treatments. \n\n"

                  "What sets Dr. Usman apart is his unwavering dedication to patient care. His **warm and empathetic approach** ensures that each patient feels heard, comfortable, and confident in their treatment journey. "
                  "He believes in **open communication, transparency, and educating patients** about the best options for their specific concerns. "
                  "Whether you're seeking a full hair transplant, a preventive treatment, or a consultation on hair health, Dr. Usman provides comprehensive guidance and tailored solutions. \n\n"

                  "If you’re looking for a trusted expert in hair restoration who prioritizes **safety, quality, and natural results**, Dr. Usman Tariq is the name you can rely on. "
                  "Book a consultation today and take the first step towards **revitalizing your hair and boosting your confidence!**",
              style: TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent.shade700,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Implement booking functionality
              },
              icon: const Icon(Icons.calendar_today,color: Colors.white,),
              label: const Text(
                "Book Appointment",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for Doctor Stats
  Widget _buildStatColumn(IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.teal, size: 24),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
        Text(value, style: const TextStyle(fontSize: 14, color: Colors.black54)),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {String? price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text and price on the same row
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.teal, size: 20),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(fontSize: 13, color: Colors.black87),
              ),
            ],
          ),
          if (price != null)

            Text(
              price,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
        ],
      ),
    );
  }
}
