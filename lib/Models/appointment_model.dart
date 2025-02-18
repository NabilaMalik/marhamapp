class AppointmentModel{
  int? id;
  String doctor;
  String date;
  String time;

  AppointmentModel({
    this.id,
    required this.doctor,
    required this.date,
    required this.time
  });

  factory AppointmentModel.fromMap(Map<dynamic,dynamic> json){
    return AppointmentModel(
      id: json['id'],
      doctor: json['doctor'],
      date: json['date'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'id':id,
      'doctor':doctor,
      'date':date,
      'time':time,
    };
  }

}


// class AppointmentModel {
//   int? id;
//   String doctor;
//   String date;
//   String time;
//
//   AppointmentModel({this.id, required this.doctor, required this.date, required this.time});
//
//   // Convert a Model to a Map
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'doctor': doctor,
//       'date': date,
//       'time': time,
//     };
//   }
//
//   // Convert Map to Model
//   factory AppointmentModel.fromMap(Map<String, dynamic> map) {
//     return AppointmentModel(
//       id: map['id'],
//       doctor: map['doctor'],
//       date: map['date'],
//       time: map['time'],
//     );
//   }
// }
