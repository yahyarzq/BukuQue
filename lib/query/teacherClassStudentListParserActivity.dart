// To parse this JSON data, do
//
//     final teacherClassStudentListParserActivity = teacherClassStudentListParserActivityFromJson(jsonString);

import 'dart:convert';

TeacherClassStudentListParserActivity teacherClassStudentListParserActivityFromJson(String str) => TeacherClassStudentListParserActivity.fromJson(json.decode(str));

String teacherClassStudentListParserActivityToJson(TeacherClassStudentListParserActivity data) => json.encode(data.toJson());

class TeacherClassStudentListParserActivity {
  TeacherClassStudentListParserActivity({
    this.data,
    this.message,
  });

  List<Datum> data;
  String message;

  factory TeacherClassStudentListParserActivity.fromJson(Map<String, dynamic> json) => TeacherClassStudentListParserActivity(
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class Datum {
  Datum({
    this.studentsId,
    this.studentsName,
    this.studentsNumber,
    this.bookId,
    this.dateSubmitted,
  });

  int studentsId;
  String studentsName;
  String studentsNumber;
  int bookId;
  DateTime dateSubmitted;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    studentsId: json["students_id"] == null ? null : json["students_id"],
    studentsName: json["students_name"] == null ? null : json["students_name"],
    studentsNumber: json["students_number"] == null ? null : json["students_number"],
    bookId: json["book_id"] == null ? null : json["book_id"],
    dateSubmitted: json["date_submitted"] == null ? null : DateTime.parse(json["date_submitted"]),
  );

  Map<String, dynamic> toJson() => {
    "students_id": studentsId == null ? null : studentsId,
    "students_name": studentsName == null ? null : studentsName,
    "students_number": studentsNumber == null ? null : studentsNumber,
    "book_id": bookId == null ? null : bookId,
    "date_submitted": dateSubmitted == null ? null : dateSubmitted.toIso8601String(),
  };
}
