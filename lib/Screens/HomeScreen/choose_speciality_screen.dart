import 'package:flutter/material.dart';
import 'package:marham/Screens/spaciality_detail_screen.dart';

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
    {"icon": Icons.healing, "name": "Dermatologist", "urdu": "ماہرامراض جلد", 'Text': '3 Available'},
    {"icon": Icons.favorite, "name": "Cardiologist", "urdu": "ماہر امراض قلب", 'Text': '2 Available'},
    {"icon": Icons.visibility, "name": "Ophthalmologist", "urdu": "ماہر امراض چشم", 'Text': '5 Available'},
    {"icon": Icons.child_care, "name": "Pediatrician", "urdu": "ماہر اطفال", 'Text': '2 Available'},
    {"icon": Icons.pregnant_woman, "name": "Gynecologist", "urdu": "ماہر امراض نسواں", 'Text': '4 Available'},
    {"icon": Icons.psychology, "name": "Psychologist", "urdu": "ماہر نفسیات", 'Text': '6 Available'},
    {"icon": Icons.local_hospital, "name": "General Physician", "urdu": "طبیب عام", 'Text': '2 Available'},
    {"icon": Icons.directions_run, "name": "Orthopedic", "urdu": "ماہرامراض ہڈی", 'Text': '0 Available'},
    {"icon": Icons.local_hospital_outlined, "name": "Dentist", "urdu": "ماہردندان", 'Text': '1 Available'},
    {"icon": Icons.hearing, "name": "ENT Specialist", "urdu": "ماہر کان، ناک، گلا", 'Text': '2 Available'},
    {"icon": Icons.waves, "name": "Neurologist", "urdu": "ماہرامراض اعصاب", 'Text': '3 Available'},
    {"icon": Icons.airline_seat_flat, "name": "Anesthesiologist", "urdu": "ماہر بے ہوشی", 'Text': '2 Available'},
    {"icon": Icons.masks, "name": "Infectious Disease", "urdu": "ماہر امراض متعدی", 'Text': '1 Available'},
    {"icon": Icons.lunch_dining, "name": "Nutritionist", "urdu": "ماہر غذائیت", 'Text': '4 Available'},
    {"icon": Icons.spa, "name": "Physiotherapist", "urdu": "ماہر فزیوتھراپی", 'Text': '5 Available'},
    {"icon": Icons.opacity, "name": "Nephrologist", "urdu": "ماہرامراض گردہ", 'Text': '2 Available'},
    {"icon": Icons.filter_vintage, "name": "Oncologist", "urdu": "ماہرامراض سرطان", 'Text': '3 Available'},
    {"icon": Icons.people, "name": "Endocrinologist", "urdu": "ماہرامراض غدود", 'Text': '2 Available'},
    {"icon": Icons.medical_services, "name": "Urologist", "urdu": "ماہرامراض بولیہ", 'Text': '1 Available'},
    {"icon": Icons.biotech, "name": "Rheumatologist", "urdu": "ماہرامراض جوڑ", 'Text': '2 Available'},
    {"icon": Icons.coronavirus, "name": "Pulmonologist", "urdu": "ماہرامراض تنفس", 'Text': '2 Available'},
    {"icon": Icons.remove_red_eye, "name": "Plastic Surgeon", "urdu": "ماہرامراض جراحی حسن", 'Text': '3 Available'},
    {"icon": Icons.heart_broken, "name": "Hematologist", "urdu": "ماہرامراض خون", 'Text': '1 Available'},
    {"icon": Icons.local_pharmacy, "name": "Pharmacologist", "urdu": "ماہرفارماکولوجی", 'Text': '2 Available'},
    {"icon": Icons.elderly, "name": "Geriatric Specialist", "urdu": "ماہربزرگوں کی صحت", 'Text': '3 Available'},
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpecialityDetailScreen(
                            specialityName: specialities[index]['name'] ?? 'Unknown',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Speciality Icon
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

                              // Speciality Name
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
                                    specialities[index]['Text'] ?? '0 Available',
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
                            Icons.arrow_forward_ios,
                            color: Colors.teal,
                            size: 18,
                          ),
                        ],
                      ),
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
