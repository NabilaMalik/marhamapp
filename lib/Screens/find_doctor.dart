import 'package:flutter/material.dart';
import 'package:marham/Screens/HomeScreen/diseases.dart';
import 'package:marham/Screens/HomeScreen/doctors_scroll.dart';
import 'package:marham/Screens/HomeScreen/symptoms.dart';
import 'package:marham/Screens/Specialities_screen.dart';

class FindDoctorPage extends StatefulWidget {
  const FindDoctorPage({super.key});

  @override
  _FindDoctorPageState createState() => _FindDoctorPageState();
}

class _FindDoctorPageState extends State<FindDoctorPage> {
  String selectedCity = 'Karachi'; // Default city
  final List<String> cities = ['Karachi', 'Lahore', 'Islamabad', 'Rawalpindi']; // List of cities

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find a Doctor",),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Makes the page scrollable
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0,right: 4),
          child: Column(
            children: [
              // Teal box section
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade200,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(2, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Image.asset(
                        'assets/images/doctorafdad.png',
                        height: 130,
                        width: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Let's get connected with the",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Top Doctors of Pakistan!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Location box and search bar section
              Row(
                children: [
                  // Dropdown Box with Location Icon
                  Container(
                    height: 40,
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal.shade900),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.location_on, color: Colors.teal.shade900),
                        ),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedCity,
                              isExpanded: true,
                              icon: const SizedBox.shrink(),
                              items: cities.map<DropdownMenuItem<String>>((String city) {
                                return DropdownMenuItem<String>(
                                  value: city,
                                  child: Text(
                                    city,
                                    style: TextStyle(color: Colors.teal.shade900),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newCity) {
                                setState(() {
                                  selectedCity = newCity!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Search Bar
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.teal.shade900),
                          hintText: 'Search for a doctor...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Symptoms Section
              SizedBox(
                height: 170,
                width: double.infinity,
                child: SymptomsScreen(
                  title: "Common Symptoms",
                  viewAllText: "",
                  viewAllIcon: null,
                  bgColor: Colors.teal.shade100,
                ),
              ),
              // Diseases Section
              SizedBox(
                height: 170,
                width: double.infinity,
                child: DiseasesScreen(
                  title: "Common Diseases",
                  viewAllText: "",
                  viewAllIcon: null,
                  bgColor: Colors.cyan.shade50,
                ),
              ),

              const SizedBox(height: 0),
              SizedBox(
                height: 170,
                width: double.infinity,
                child: SpecialitiesScreen(
                  title: "Top Specialities",
                  viewAllText: "",
                  viewAllIcon: null,
                  bgColor: Colors.purple.shade50,
                ),
              ),
              // Doctors Section
              SizedBox(
                height: 190,
                width: double.infinity,
                child: DoctorsScreen(
                  title: 'Top Doctors',
                  backgroundColor: Colors.white,
                  bgColor: [Colors.teal.shade100,Colors.teal.shade100],
                fontColor: Colors.teal,),
              ),
            //  const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
