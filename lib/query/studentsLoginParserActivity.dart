// To parse this JSON data, do
//
//     final studentsLoginParserActivity = studentsLoginParserActivityFromJson(jsonString);

import 'dart:convert';

StudentsLoginParserActivity studentsLoginParserActivityFromJson(String str) => StudentsLoginParserActivity.fromJson(json.decode(str));

String studentsLoginParserActivityToJson(StudentsLoginParserActivity data) => json.encode(data.toJson());

class StudentsLoginParserActivity {
  StudentsLoginParserActivity({
    this.status,
    this.studentsId,
    this.message,
  });

  bool status;
  List<StudentsId> studentsId;
  String message;

  factory StudentsLoginParserActivity.fromJson(Map<String, dynamic> json) => StudentsLoginParserActivity(
    status: json["status"] == null ? null : json["status"],
    studentsId: json["students_id"] == null ? null : List<StudentsId>.from(json["students_id"].map((x) => StudentsId.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "students_id": studentsId == null ? null : List<dynamic>.from(studentsId.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class StudentsId {
  StudentsId({
    this.id,
    this.name,
    this.studentClassId,
  });

  int id;
  String name;
  int studentClassId;

  factory StudentsId.fromJson(Map<String, dynamic> json) => StudentsId(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    studentClassId: json["student_class_id"] == null ? null : json["student_class_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "student_class_id": studentClassId == null ? null : studentClassId,
  };
}
