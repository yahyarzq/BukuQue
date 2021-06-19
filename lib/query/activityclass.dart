
import 'dart:convert';
//
//  TeacherLoginParserActivity
//

class TeacherLoginParserActivity {
  TeacherLoginParserActivity({
    this.status,
    this.teacherId,
    this.message,
  });

  bool status;
  List<TeacherId> teacherId;
  String message;

  factory TeacherLoginParserActivity.fromJson(Map<String, dynamic> json) => TeacherLoginParserActivity(
    status: json["status"] == null ? null : json["status"],
    teacherId: json["teacher_id"] == null ? null : List<TeacherId>.from(json["teacher_id"].map((x) => TeacherId.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );
}

class TeacherId {
  TeacherId({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory TeacherId.fromJson(Map<String, dynamic> json) => TeacherId(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );
}

//
//  TeacherDataParserActivity
//

class TeacherDataParserActivity {
  TeacherDataParserActivity({
    this.teacherData1,
    this.teacherData2,
    this.message,
  });

  List<TeacherData1> teacherData1;
  List<TeacherData2> teacherData2;
  String message;

  factory TeacherDataParserActivity.fromJson(Map<String, dynamic> json) => TeacherDataParserActivity(
    teacherData1: json["teacher_data1"] == null ? null : List<TeacherData1>.from(json["teacher_data1"].map((x) => TeacherData1.fromJson(x))),
    teacherData2: json["teacher_data2"] == null ? null : List<TeacherData2>.from(json["teacher_data2"].map((x) => TeacherData2.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

}

class TeacherData1 {
  TeacherData1({
    this.totalClass,
  });

  int totalClass;

  factory TeacherData1.fromJson(Map<String, dynamic> json) => TeacherData1(
    totalClass: json["total_class"] == null ? null : json["total_class"],
  );

}

class TeacherData2 {
  TeacherData2({
    this.totalBooksUnreviewed,
  });

  int totalBooksUnreviewed;

  factory TeacherData2.fromJson(Map<String, dynamic> json) => TeacherData2(
    totalBooksUnreviewed: json["total_books_unreviewed"] == null ? null : json["total_books_unreviewed"],
  );

}
