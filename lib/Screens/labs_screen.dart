import 'package:flutter/material.dart';

class LabsScreen extends StatelessWidget {
  final String testName;

  const LabsScreen({required this.testName, super.key});

  @override
  Widget build(BuildContext context) {
    // Sample lab data
    List<Map<String, String>> labs = [
      {
        "name": "Excel Labs",
        "time": "9:00am - 4:00pm",
        "branches": "Available branches: 1",
        "image": "assets/images/alag.jpg",
        "discount": "25%",
      },
      {
        "name": "City Diagnostics",
        "time": "8:00am - 6:00pm",
        "branches": "Available branches: 3",
        "image": "assets/images/alag.jpg",
        "discount": "30%",
      },
      {
        "name": "Health First Lab",
        "time": "7:30am - 5:00pm",
        "branches": "Available branches: 2",
        "image": "assets/images/alag.jpg",
        "discount": "15%",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Book Lab Test",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for labs...",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.teal),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),

            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: labs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: LabCard(
                      labName: labs[index]["name"]!,
                      time: labs[index]["time"]!,
                      branches: labs[index]["branches"]!,
                      imagePath: labs[index]["image"]!,
                      discount: labs[index]["discount"]!,
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

// 🏥 Lab Card Widget (Reused for each lab)
class LabCard extends StatelessWidget {
  final String labName;
  final String time;
  final String branches;
  final String imagePath;
  final String discount;

  const LabCard({
    required this.labName,
    required this.time,
    required this.branches,
    required this.imagePath,
    required this.discount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          padding: EdgeInsets.only(left: 21, top: 15, bottom: 15, right: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(2, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  // 🖼 Lab Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                      imagePath,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          labName,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.teal.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.access_time, size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.business_sharp, size: 14, color: Colors.black54),
                            SizedBox(width: 4),
                            Text(branches, style: TextStyle(fontSize: 12, color: Colors.black54)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 🔘 View Profile Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.teal.shade900),
                      ),
                    ),
                    child: Text(
                      "View Profile",
                      style: TextStyle(color: Colors.teal.shade900, fontSize: 13),
                    ),
                  ),
                  SizedBox(width: 10),

                  // 🔘 Select Tests Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Select Tests", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),

        // 🔖 Discount Badge
        Positioned(
          top: 0,
          right: 0,
          child: CustomPaint(
            painter: TopRightCornerPainter(),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    discount,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// 🎨 Custom Painter for Discount Badge
class TopRightCornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.teal;
    var path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width - 70, 0);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
