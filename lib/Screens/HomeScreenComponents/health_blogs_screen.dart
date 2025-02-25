import 'package:flutter/material.dart';

class HealthBlogsScreen extends StatelessWidget {
  const HealthBlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align left & right
              children: [
                Text(
                  "Health Blogs",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 5), // Space between text and icon
                    Icon(Icons.double_arrow, size: 16, color: Colors.grey), // Small next icon
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Horizontal Scrollable Boxes
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              child: Row(
                children: [
                  _buildBox(context, "assets/images/healthylifestyle.jpg", "Healthy Lifestyle"),
                  _buildBox(context, "assets/images/womanhealth.jpg", "Women's Health"),
                  _buildBox(context, "assets/images/Skin-Care.jpg", "Skin Care"),
                  _buildBox(context, "assets/images/download (2).jpg", "Fitness & Exercise"),
                  _buildBox(context, "assets/images/Skin-Care.jpg", "Health News"),
                  _buildBox(context, "assets/images/download.jpg", "Dental Health"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// **Blog Box Widget with Snackbar**
  Widget _buildBox(BuildContext context, String imagePath, String text) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("You clicked on $text"),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.teal,
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3, bottom: 24),
        child: Container(
          height: 117,
          width: 115,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  imagePath,
                  height: 90,
                  width: 105,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}













// Widget _buildBoxCustomSize(String imagePath, String title, List<String> points) {
  //   return Padding(
  //     padding: EdgeInsets.only(top: 0.0),
  //     child: Container(
  //       height: 180, // Increased height to accommodate buttons
  //       width: 370,
  //       decoration: BoxDecoration(
  //         color: Colors.orangeAccent.shade100,
  //         borderRadius: BorderRadius.circular(8),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black12,
  //             blurRadius: 5,
  //             spreadRadius: 2,
  //             offset: Offset(2, 3),
  //           ),
  //         ],
  //       ),
  //       child: Padding(
  //         padding: EdgeInsets.only(top: 22.0, left: 10, right: 10),
  //         child: Row(
  //           children: [
  //             // Text section with tick icons & buttons
  //             Expanded(
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     title,
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 14,
  //                       color: Colors.teal,
  //                     ),
  //                     maxLines: 2,
  //                     overflow: TextOverflow.ellipsis,
  //                   ),
  //                   SizedBox(height: 7),
  //
  //                   // List of text with tick icons
  //                   ...points.map((point) => Row(
  //                     children: [
  //                       Icon(Icons.check_outlined, color: Colors.green, size: 16),
  //                       SizedBox(width: 5),
  //                       Expanded(
  //                         child: Text(
  //                           point,
  //                           style: TextStyle(fontSize: 12),
  //                           maxLines: 1,
  //                           overflow: TextOverflow.ellipsis,
  //                         ),
  //                       ),
  //                     ],
  //                   )),
  //
  //                   // Spacer(), // Push buttons to the bottom
  //                   SizedBox(height: 24,),
  //                   // Buttons
  //                   Row(
  //                     children: [
  //                       Expanded(
  //                         child: ElevatedButton(
  //                           onPressed: () {
  //                             // Add functionality
  //                           },
  //                           style: ElevatedButton.styleFrom(
  //                             backgroundColor: Colors.white, // Button color
  //                             foregroundColor: Colors.teal, // Text color
  //                             padding: EdgeInsets.symmetric(vertical: 1), // Padding inside button
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8), // Rounded corners
  //                               // side: BorderSide(color: Colors.teal), // Border for the white button
  //                             ),
  //                           ),
  //                           child: Text("View All Questions",style: TextStyle(fontSize: 12),),
  //                         ),
  //                       ),
  //                       SizedBox(width: 10), // Space between buttons
  //                       Expanded(
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             // Add functionality
  //                           },
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.teal, // Button color
  //                             foregroundColor: Colors.white, // Text color
  //                             padding: EdgeInsets.symmetric(vertical: 1), // Padding inside button
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8), // Rounded corners
  //                             ),
  //                           ),
  //                           child: Text("Learn More"),
  //                         ),
  //                       ),
  //                     ],
  //                   )
  //
  //                 ],
  //               ),
  //             ),
  //             SizedBox(width: 12),
  //
  //             // Image section (right)
  //             ClipRRect(
  //               borderRadius: BorderRadius.circular(0),
  //               child: Image.asset(
  //                 imagePath,
  //                 height: 155,
  //                 width: 85,
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }



