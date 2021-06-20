// To parse this JSON data, do
//
//     final studentsDataParserActivity = studentsDataParserActivityFromJson(jsonString);

import 'dart:convert';

StudentsDataParserActivity studentsDataParserActivityFromJson(String str) => StudentsDataParserActivity.fromJson(json.decode(str));

String studentsDataParserActivityToJson(StudentsDataParserActivity data) => json.encode(data.toJson());

class StudentsDataParserActivity {
  StudentsDataParserActivity({
    this.studentsData1,
    this.studentsData2,
    this.message,
  });

  List<StudentsData1> studentsData1;
  List<StudentsData2> studentsData2;
  String message;

  factory StudentsDataParserActivity.fromJson(Map<String, dynamic> json) => StudentsDataParserActivity(
    studentsData1: json["students_data1"] == null ? null : List<StudentsData1>.from(json["students_data1"].map((x) => StudentsData1.fromJson(x))),
    studentsData2: json["students_data2"] == null ? null : List<StudentsData2>.from(json["students_data2"].map((x) => StudentsData2.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "students_data1": studentsData1 == null ? null : List<dynamic>.from(studentsData1.map((x) => x.toJson())),
    "students_data2": studentsData2 == null ? null : List<dynamic>.from(studentsData2.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class StudentsData1 {
  StudentsData1({
    this.totalBooks,
  });

  int totalBooks;

  factory StudentsData1.fromJson(Map<String, dynamic> json) => StudentsData1(
    totalBooks: json["total_books"] == null ? null : json["total_books"],
  );

  Map<String, dynamic> toJson() => {
    "total_books": totalBooks == null ? null : totalBooks,
  };
}

class StudentsData2 {
  StudentsData2({
    this.totalClassMembers,
  });

  int totalClassMembers;

  factory StudentsData2.fromJson(Map<String, dynamic> json) => StudentsData2(
    totalClassMembers: json["total_class_members"] == null ? null : json["total_class_members"],
  );

  Map<String, dynamic> toJson() => {
    "total_class_members": totalClassMembers == null ? null : totalClassMembers,
  };
}
