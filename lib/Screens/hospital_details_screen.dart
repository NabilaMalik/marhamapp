import 'package:flutter/material.dart';
import 'package:marham/Screens/HomeScreenComponents/hospitals_screen.dart';
class HospitalDetailsScreen extends StatefulWidget {
  const HospitalDetailsScreen({super.key});

  @override
  _HospitalDetailsScreenState createState() => _HospitalDetailsScreenState();
}

class _HospitalDetailsScreenState extends State<HospitalDetailsScreen> {
  TextEditingController searchController = TextEditingController();

  List<String> cities = ["Select City", "Sialkot", "Lahore", "Karachi", "Islamabad"];
  List<String> areas = ["Select Area", "Downtown", "Uptown", "Midtown", "Suburb"];

  String selectedCity = "Select City";
  String selectedArea = "Select Area";


  List<Map<String, String>> filteredHospitals = [];

  @override
  void initState() {
    super.initState();

  }

  void filterHospitals(String query) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Hospitals"),centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      value: selectedCity,
                      items: cities.map((String city) {
                        return DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCity = value.toString();
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Choose your City",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: selectedArea,
                      items: areas.map((String area) {
                        return DropdownMenuItem(
                          value: area,
                          child: Text(area),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedArea = value.toString();
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Choose your Area",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: searchController,
                onChanged: filterHospitals,
                decoration: InputDecoration(
                  hintText: "Search hospitals...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 190,
              width: double.infinity,
              child: HospitalScreen(
                title: 'Top Hospital',
                backgroundColor: Colors.white,
                bgColor: [Colors.white, Colors.white],
                fontColor: Colors.black,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'All Hospitals of Lahore',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
            ),
            SizedBox(height: 10,),
            Container( height: 360,
              color: Colors.white, // Set your background color here
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0,left: 12,right: 12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/images/HOSPITAL.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        // Text on the right
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hospital Name",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Location/Details about the hospital",
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Space before the divider
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.light_mode_outlined,color:Colors.grey[600] ,),
                              SizedBox(width: 5), // Space between icon and text
                              Text(
                                "Opening Hours",
                                style: TextStyle(fontSize: 13, color: Colors.grey[600] ),
                              ),
                            ],
                          ),
                          SizedBox(height: 0), // Space before the number
                          Text(
                            "24 Hours",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                          SizedBox(width: 30),
                          // Second two texts (Horizontal Alignment)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.light_mode_outlined,color: Colors.grey[600]),
                                  SizedBox(width: 5), // Space between icon and text
                                  Text(
                                    "Available Doctor(s)",
                                    style: TextStyle(fontSize: 13, color: Colors.grey[600] ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0), // Space before the number
                              Text(
                                "2",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 130.0),
                      child: Text(
                        'Departments in Abdul Rafe Eye Clinic ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Slider for buttons
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Allergy Specialist"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Eye Surgeon"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Physiotherapist"),
                          ),

                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(120, 40), // Width: 120, Height: 40
                            ),
                            child: Text("General Medicine"),
                          ),

                        ],
                      ),
                    ),
                    ElevatedButton(
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
                        minimumSize: Size(500, 40),
                      ),
                      child: const Text(
                        "Call Helpline",
                        style: TextStyle(fontSize: 14,),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add confirm order action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Text color
                        padding: const EdgeInsets.symmetric(vertical: 1), // Padding
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.red)
                        ),
                        minimumSize: Size(500, 40),
                      ),
                      child: const Text(
                        "View Profile",
                        style: TextStyle(fontSize: 14,),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container( height: 360,
              color: Colors.white, // Set your background color here
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0,left: 12,right: 12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/images/HOSPITAL.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        // Text on the right
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hospital Name",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Location/Details about the hospital",
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Space before the divider
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.light_mode_outlined,color:Colors.grey[600] ,),
                                  SizedBox(width: 5), // Space between icon and text
                                  Text(
                                    "Opening Hours",
                                    style: TextStyle(fontSize: 13, color: Colors.grey[600] ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0), // Space before the number
                              Text(
                                "24 Hours",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          // Second two texts (Horizontal Alignment)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.light_mode_outlined,color: Colors.grey[600]),
                                  SizedBox(width: 5), // Space between icon and text
                                  Text(
                                    "Available Doctor(s)",
                                    style: TextStyle(fontSize: 13, color: Colors.grey[600] ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0), // Space before the number
                              Text(
                                "2",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 130.0),
                      child: Text(
                        'Departments in Abdul Rafe Eye Clinic ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Slider for buttons
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Allergy Specialist"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Eye Surgeon"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(170, 40), // Width: 120, Height: 40
                            ),
                            child: Text("Physiotherapist"),
                          ),

                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              minimumSize: Size(120, 40), // Width: 120, Height: 40
                            ),
                            child: Text("General Medicine"),
                          ),

                        ],
                      ),
                    ),
                    ElevatedButton(
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
                        minimumSize: Size(500, 40),
                      ),
                      child: const Text(
                        "Call Helpline",
                        style: TextStyle(fontSize: 14,),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add confirm order action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Text color
                        padding: const EdgeInsets.symmetric(vertical: 1), // Padding
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.red)
                        ),
                        minimumSize: Size(500, 40),
                      ),
                      child: const Text(
                        "View Profile",
                        style: TextStyle(fontSize: 14,),
                      ),
                    ),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
