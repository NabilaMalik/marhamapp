import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  // Initialize Database
  Future<Database> initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'appointment.db');

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  // Create Table
  Future<void> _onCreate(Database db, int version) async {
    await db.execute("""
      CREATE TABLE appointment (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        doctor TEXT ,
        date TEXT ,
        time TEXT
      )
    """); // ✅ Added missing fields
  }
}
