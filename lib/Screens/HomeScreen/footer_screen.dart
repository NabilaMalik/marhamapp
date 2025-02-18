import 'package:flutter/material.dart';

class FooterScreen extends StatefulWidget {
  const FooterScreen({super.key});

  @override
  _FooterScreenState createState() => _FooterScreenState();
}

class _FooterScreenState extends State<FooterScreen> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.calendar_today,
    Icons.library_books,
    Icons.phone,
  ];

  final List<String> _labels = [
    'Home',
    'Appointment',
    'Medical Record',
    'Helpline',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Selected: ${_labels[_selectedIndex]}',
          style: TextStyle(fontSize: 16),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70, // Adjusted height for the footer
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, -4), // Minor offset for subtle shadow
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)), // Rounded top corners
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(_icons[0]),
              label: _labels[0],
            ),
            BottomNavigationBarItem(
              icon: Icon(_icons[1]),
              label: _labels[1],
            ),
            BottomNavigationBarItem(
              icon: Icon(_icons[2]),
              label: _labels[2],
            ),
            BottomNavigationBarItem(
              icon: Icon(_icons[3]),
              label: _labels[3],
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white, // Ensure background is white
          elevation: 0, // Remove elevation from BottomNavigationBar itself
        ),
      ),
    );
  }
}
