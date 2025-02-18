import 'package:get/get.dart';
import 'package:marham/Models/appointment_model.dart';
import 'package:marham/Repositories/appointment_repository.dart';

class AppointmentViewModel extends GetxController {
  var allAppointments = <AppointmentModel>[].obs;
  AppointmentRepository appointmentRepository = AppointmentRepository();

  @override
  void onInit() {
    super.onInit();
    fetchAllAppointments(); // ✅ Fixed function call
  }

  // Fetch all appointments from the database
  fetchAllAppointments() async {
    var appointments = await appointmentRepository.getAppointments(); // ✅ Fixed method name
    allAppointments.value = appointments;
  }

  // Add a new appointment
  Future<void> addAppointment(AppointmentModel appointmentModel) async {
    await appointmentRepository.addAppointment(appointmentModel); // ✅ Added await
    fetchAllAppointments();
  }

  // Update an appointment
  Future<void> updateAppointment(AppointmentModel appointmentModel) async {
    await appointmentRepository.updateAppointment(appointmentModel); // ✅ Added await
    fetchAllAppointments();
  }

  // Delete an appointment
  Future<void> deleteAppointment(int id) async {
    await appointmentRepository.deleteAppointment(id); // ✅ Added await
    fetchAllAppointments();
  }
}
