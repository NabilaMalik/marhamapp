import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marham/ViewModels/appointment_view_model.dart';
import 'package:marham/Models/appointment_model.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final AppointmentViewModel appointmentViewModel = Get.put(AppointmentViewModel());
  DateTime? selectedDate;
  String? selectedTime;
  String? selectedDoctor;

  List<String> availableTimes = [
    "09:00 AM", "10:00 AM", "11:00 AM", "01:00 PM", "02:00 PM", "03:00 PM"
  ];

  List<String> doctors = [
    "Dr. John Smith - Cardiologist",
    "Dr. Emily Brown - Dermatologist",
    "Dr. Robert Wilson - Orthopedic",
    "Dr. Olivia Johnson - Neurologist"
  ];

  // Function to pick a date
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Function to book the appointment
  void _bookAppointment() {
    if (selectedDate != null && selectedTime != null && selectedDoctor != null) {
      AppointmentModel appointmentModel = AppointmentModel(
        doctor: selectedDoctor!,
        date: selectedDate!.toLocal().toString().split(' ')[0],  // format to yyyy-mm-dd
        time: selectedTime!,
      );

      appointmentViewModel.addAppointment(appointmentModel);  // Add the appointment to DB
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Appointment Booked Successfully!")),
      );
      Navigator.pop(context); // Close the screen after booking
    } else {
      // Show an error message if not all fields are filled
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book an Appointment"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Picker
            Text("Select Date", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  selectedDate == null ? "Choose Date" : "${selectedDate!.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Time Slot Selection
            Text("Select Time Slot", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Wrap(
              spacing: 10,
              children: availableTimes.map((time) {
                return ChoiceChip(
                  label: Text(time),
                  selected: selectedTime == time,
                  selectedColor: Colors.blue.shade100,
                  onSelected: (selected) {
                    setState(() {
                      selectedTime = time;
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            // Doctor Selection Dropdown
            Text("Select Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedDoctor,
              hint: Text("Choose a Doctor"),
              items: doctors.map((doctor) {
                return DropdownMenuItem<String>(
                  value: doctor,
                  child: Text(doctor),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDoctor = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
            SizedBox(height: 20),

            // Book Appointment Button
            Center(
              child: ElevatedButton(
                onPressed: selectedDate != null && selectedTime != null && selectedDoctor != null
                    ? _bookAppointment
                    : null, // Disabled if not filled
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text("Book Appointment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
