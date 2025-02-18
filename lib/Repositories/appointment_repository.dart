import 'package:flutter/foundation.dart';
import 'package:marham/Database/util.dart';
import 'package:marham/Database/db_helper.dart';
import 'package:marham/Models/appointment_model.dart';

class AppointmentRepository {
  final DBHelper dbHelper = DBHelper();

  // Fetch all appointments
  Future<List<AppointmentModel>> getAppointments() async {
    var dbClient = await dbHelper.db;
    List<Map<String, dynamic>> maps = await dbClient.query(
      appointmentTableName,
      columns: ['id', 'date', 'time', 'doctor'],
    );

    List<AppointmentModel> appointments = maps.isNotEmpty
        ? maps.map((map) => AppointmentModel.fromMap(map)).toList()
        : [];

    if (kDebugMode) {
      print('Raw data from Appointment Table database:');
    }
    for (var map in maps) {
      if (kDebugMode) {
        print(map);
      }
    }
    return appointments;
  }

  // Insert new appointment
  Future<int> addAppointment(AppointmentModel appointmentModel) async {
    var dbClient = await dbHelper.db;
    return await dbClient.insert(appointmentTableName, appointmentModel.toMap());
  }

  // Update appointment
  Future<int> updateAppointment(AppointmentModel appointmentModel) async {
    var dbClient = await dbHelper.db;
    return await dbClient.update(
      appointmentTableName,
      appointmentModel.toMap(),
      where: 'id = ?',
      whereArgs: [appointmentModel.id],
    );
  }

  // Delete appointment by ID
  Future<int> deleteAppointment(int id) async {
    var dbClient = await dbHelper.db;
    return await dbClient.delete(
      appointmentTableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
