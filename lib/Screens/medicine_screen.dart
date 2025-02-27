import 'package:flutter/material.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({super.key});

  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}


class _MedicineScreenState extends State<MedicineScreen> {
  bool showAnswer = false;
  bool showAnswerB = false;
  bool showAnswerC = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Medicine Delivery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1467,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 209,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/orderdelivery.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 209,
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.5), // Dark overlay
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white, size: 24),
                            SizedBox(width: 10),
                            Text(
                              "Location",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Order button action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 8),
                          ),
                          child: const Text("Order Medicine"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Icons with Descriptions
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StepIcon(image: 'assets/images/prescription.png', title: 'Fill Form', description: 'Enter medicine details or upload prescription.'),
                    StepIcon(image: 'assets/images/approve-icon.png', title: 'Confirm Order', description: 'Review order details and make payment.'),
                    StepIcon(image: 'assets/images/shopping_bag.png', title: 'Receive Order', description: 'Get your medicines delivered to your doorstep.'),
                  ],
                ),
              ),

              // Medicine Entry Section
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 16),
                child: Text(
                  "Enter your medicine",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              const CustomTextField(hintText: "Enter medicine name..."),

              // OR Divider
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 72, vertical: 8),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11),
                      child: Text('OR', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 14)),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
              ),

              // City Selection
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 16),
                child: Text(
                  "Select City",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                  hint: const Text("Select your city"),
                  items: [
                    "Karachi", "Lahore", "Islamabad", "Rawalpindi", "Faisalabad",
                    "Multan", "Peshawar", "Quetta", "Sialkot", "Hyderabad",
                    "Gujranwala", "Bahawalpur", "Sargodha", "Sukkur", "Larkana",
                    "Sheikhupura", "Jhang", "Dera Ghazi Khan", "Okara", "Mardan",
                    "Gujrat", "Rahim Yar Khan", "Sahiwal", "Wah Cantt", "Mirpur Khas",
                    "Abbottabad", "Kamoke", "Mingora", "Nawabshah", "Chiniot"
                  ]
                      .map((String city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle city selection
                  },
                ),
              ),

              // Address Entry
              const Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Text(
                  "Enter Address",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              const CustomTextField(hintText: "Enter your address"),
              const Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Text(
                  "Patient Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              const CustomTextField(hintText: "Enter your Name"),
              const Padding(
                padding: EdgeInsets.only(top: 00, left: 16),
                child: Text(
                  "Patient Mobile no.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              const CustomTextField(hintText: "Your Phone"),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16,right:16 ),
                child: SizedBox(
                  width: double.infinity, // Make the button full width
                  child: ElevatedButton(
                    onPressed: () {
                      // Add confirm order action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade700, // Button color
                      foregroundColor: Colors.white, // Text color
                      padding: const EdgeInsets.symmetric(vertical: 1), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      "Confirm Order",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
             Center(child: Text('Minimum order amount is Rs. 500',
               style: TextStyle(fontSize: 14,color: Colors.grey[600]),
             ),) ,
              Container(
                padding: EdgeInsets.all(10), // Optional padding for better spacing
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Center align text
                  children: [
                    Text(
                      'Frequently Asked Questions',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '10 Millions+  People Have Used This App',  //add app name here
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16,right:16 ),
                child: SizedBox(
                  width: double.infinity, // Make the button full width
                  child: ElevatedButton(
                    onPressed: () {
                      // Add confirm order action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button color
                      foregroundColor: Colors.red, // Text color
                      padding: const EdgeInsets.symmetric(vertical: 1), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.red)
                      ),
                    ),
                    child: const Text(
                      "Call Helpline",
                      style: TextStyle(fontSize: 14,),
                    ),
                  ),
                ),
              ),
        Column(
          children: [
            faqItem(
              question: 'Is there a delivery service for medicine?',
              answer: 'Yes! We offer medicine delivery service.',
              isExpanded: showAnswer,
              onTap: () {
                setState(() {
                  showAnswer = !showAnswer;
                });
              },
            ),
            faqItem(
              question: 'How can I order medicine at home?',
              answer: 'To order medicine at home, simply search for your required medicine on our platform, add it to the cart, provide your delivery details, and confirm your order. You can also upload a prescription if needed. Our delivery service ensures safe and timely delivery to your doorstep.',
              isExpanded: showAnswerB,
              onTap: () {
                setState(() {
                  showAnswerB = !showAnswerB;
                });
              },
            ),
            faqItem(
              question: 'Who are the partner apps for medicine delivery?',
              answer: 'Our platform partners with various trusted pharmacies and delivery services, including [Partner Name 1], [Partner Name 2], and [Partner Name 3], ensuring quick and reliable medicine delivery at your doorstep.',
              isExpanded: showAnswerC,
              onTap: () {
                setState(() {
                  showAnswerC = !showAnswerC;
                });
              },
            ),
          ],
        )

            ],
          ),
        ),
      ),
    );
  }
}
// Custom Widget for Step Icons
class StepIcon extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const StepIcon({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 50, height: 50),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 3),
        SizedBox(
          width: 100,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
// Custom Widget for FAQ Item
Widget faqItem({required String question, required String answer, required bool isExpanded, required VoidCallback onTap}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        margin: const EdgeInsets.only(left: 16, top: 10, right: 16),
        decoration: BoxDecoration(
          color: Colors.grey[200], // Light gray background
          borderRadius: BorderRadius.circular(0),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space text and icon
            children: [
              Expanded(
                child: Text(
                  question,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, // Toggle icon
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      if (isExpanded)
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
          child: Text(
            answer,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
    ],
  );
}
// Custom Widget for Input Fields
class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
}
