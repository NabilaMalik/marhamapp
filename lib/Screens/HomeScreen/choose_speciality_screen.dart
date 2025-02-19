import 'package:flutter/material.dart';

class ChooseSpecialityScreen extends StatefulWidget {
  @override
  _ChooseSpecialityScreenState createState() => _ChooseSpecialityScreenState();
}

class _ChooseSpecialityScreenState extends State<ChooseSpecialityScreen> {
  String? selectedCity;
  final List<String> cities = [
    "Karachi",
    "Lahore",
    "Islamabad",
    "Rawalpindi",
    "Faisalabad",
    "Multan",
    "Peshawar",
    "Quetta",
    "Sialkot",
    "Hyderabad"
  ];

  final List<Map<String, dynamic>> specialities = [
    {"icon": Icons.healing, "name": "Dermatologist", "urdu": "ماہرامراض جلد", 'Text': '1 Available'},
    {"icon": Icons.favorite, "name": "Cardiologist", "urdu": "ماہر امراض قلب"},
    {"icon": Icons.visibility, "name": "Ophthalmologist", "urdu": "ماہر امراض چشم"},
    {"icon": Icons.child_care, "name": "Pediatrician", "urdu": "ماہر اطفال"},
    {"icon": Icons.pregnant_woman, "name": "Gynecologist", "urdu": "ماہر امراض نسواں"},
    {"icon": Icons.psychology, "name": "Psychologist", "urdu": "ماہر نفسیات"},
    {"icon": Icons.local_hospital, "name": "General Physician", "urdu": "طبیب عام"},
    {"icon": Icons.directions_run, "name": "Orthopedic", "urdu": "ماہرامراض ہڈی"},
    {"icon": Icons.local_hospital_outlined, "name": "Dentist", "urdu": "ماہردندان"},
    {"icon": Icons.hearing, "name": "ENT Specialist", "urdu": "ماہر کان، ناک، گلا"},
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Choose Speciality",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal.shade700,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown for City Selection
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 19),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.shade50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedCity ?? cities.first,
                  isExpanded: true,
                  hint: const Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.teal),
                      SizedBox(width: 10),
                      Text("Select a City"),
                    ],
                  ),
                  items: cities.map((String city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCity = newValue;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Search Box
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.shade50),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Speciality...",
                  prefixIcon: const Icon(Icons.search, color: Colors.teal),
                  border: InputBorder.none,
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Title for Specialities
            Text(
              'Top Specialities',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade900,
              ),
            ),

            const SizedBox(height: 10),

            // Specialities List
            Expanded(
              child: ListView.builder(
                itemCount: specialities.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between icon and arrow
                      children: [
                        Row(
                          children: [
                            // Icon
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                specialities[index]['icon'],
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 15),

                            // English & Urdu Names
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  specialities[index]['name'] ?? 'Unknown',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.teal.shade900,
                                  ),
                                ),
                                Text(
                                  specialities[index]['urdu'] ?? 'نامعلوم',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.yellow.shade900,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  specialities[index]['Text'] ?? '1 Available',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.teal.shade900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios, // Small right arrow icon
                          color: Colors.teal,
                          size: 18,
                        ),
                      ],
                    ),

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
