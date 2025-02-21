import 'package:get/get.dart';
import 'package:marham/Models/appointment_model.dart';
import 'package:marham/Repositories/appointment_repository.dart';

class AppointmentViewModel extends GetxController {
  var allAppointments = <AppointmentModel>[].obs;
  AppointmentRepository appointmentRepository = AppointmentRepository();

  @override
  void onInit() {
    super.onInit();
    fetchAllAppointments();
  }

  fetchAllAppointments() async {
    var appointments = await appointmentRepository.getAppointments();
    allAppointments.value = appointments;
  }

  Future<void> addAppointment(AppointmentModel appointmentModel) async {
    await appointmentRepository.addAppointment(appointmentModel);
    fetchAllAppointments();
  }

  Future<void> updateAppointment(AppointmentModel appointmentModel) async {
    await appointmentRepository.updateAppointment(appointmentModel);
    fetchAllAppointments();
  }

  Future<void> deleteAppointment(int id) async {
    await appointmentRepository.deleteAppointment(id);
    fetchAllAppointments();
  }
}
