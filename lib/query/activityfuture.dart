import 'dart:convert';
import 'package:bukuque/query/activityclass.dart';
import 'package:bukuque/query/studentsDataParserActivity.dart';
import 'package:bukuque/query/studentsLoginParserActivity.dart';
import 'package:bukuque/query/teacherClassStudentListParserActivity.dart';
import 'package:http/http.dart' as http;
import 'package:bukuque/component/globals.dart' as globals;

//
//  teacherLoginFutureActivity
//
Future<TeacherLoginParserActivity> teacherLoginFutureActivity(String username,
    String password) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/teacher/login'),
      body: {"username": username, "password": password});

  if (response.statusCode == 200) {
    //print("testing http connection");
    //print(json.decode(response.body));
    return TeacherLoginParserActivity.fromJson(jsonDecode(response.body));
  } else {
    //print("testing http connection");
    //print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}

//
//  TeacherDataFutureActivity
//
Future<TeacherDataParserActivity> teacherDataFutureActivity(String id) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/teacher/teacherData'),
      body: {"teacher_id": id});
  if (response.statusCode == 200) {
    print("testing http connection 2");
    print(json.decode(response.body));
    return TeacherDataParserActivity.fromJson(jsonDecode(response.body));
  } else {
    print("testing http connection2");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}

//
//  TeacherClassListParserActivity
//
Future<TeacherClassListParserActivity> teacherClassListFutureActivity(
    String id) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/teacher/teacherClassList'),
      body: {"teacher_id": id});
  if (response.statusCode == 200) {
    print("testing http connection 3");
    print(json.decode(response.body));
    return TeacherClassListParserActivity.fromJson(jsonDecode(response.body));
  } else {
    print("testing http connection 3");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}

//
//  TeacherClassListParserActivity
//
Future<TeacherClassStudentListParserActivity>
teacherClassStudentListFutureActivity(String tid, String cid) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/teacher/teacherClassStudentList'),
      body: {"teacher_id": tid, "class_id": cid});
  print("Print teacher id and class id");
  print(tid);
  print(cid);
  if (response.statusCode == 200) {
    print("testing http connection 3 4");
    print(json.decode(response.body));
    return TeacherClassStudentListParserActivity.fromJson(
        jsonDecode(response.body));
  } else {
    print("testing http connection 3");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}


//
//  Students
//


//
//  StudentsLoginParserActivity
//
Future<StudentsLoginParserActivity> studentsLoginFutureActivity(String username,
    String password) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/students/login'),
      body: {"username": username, "password": password});

  if (response.statusCode == 200) {
    print("testing http connection student 1");
    print(json.decode(response.body));
    return StudentsLoginParserActivity.fromJson(jsonDecode(response.body));
  } else {
    print("testing http connection student 1");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}


//
//  StudentsDataFutureActivity
//
Future<StudentsDataParserActivity> studentsDataFutureActivity(String id,
    String cid) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/students/studentsData'),
      body: {"students_id": id, "class_id": cid});
  if (response.statusCode == 200) {
    print("testing http connection request");
    print(json.decode(response.body));
    return StudentsDataParserActivity.fromJson(jsonDecode(response.body));
  } else {
    print("testing http connection2");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}


//
//  studentsBooksSubmitFutureActivity
//
Future studentsBooksSubmitFutureActivity(
     String is_nugas,String is_ngaji,String is_doabanguntidur,String is_doabelumtidur,
    String book_content,String is_subuh,String is_dzuhur,String is_azhar,String is_maghrib,
    String is_isya,String bookisreviewed,String Surah_id) async {
  http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/books/studentsBooksSubmit'),
      body: {
        "is_nugas": is_nugas,
        "is_ngaji": is_ngaji,
        "is_doabanguntidur": is_doabanguntidur,
        "is_doabelumtidur": is_doabelumtidur,
        "book_content": book_content,
        "is_subuh": is_subuh,
        "is_dzuhur": is_dzuhur,
        "is_azhar": is_azhar,
        "is_maghrib": is_maghrib,
        "is_isya": is_isya,
        "bookisreviewed": bookisreviewed,
        "Surah_id": Surah_id,
        "Students_id": globals.student_id.toString(),
        "Students_Teacher_id": globals.student_teacher_id.toString(),
        "Students_Class_id": globals.student_class_id.toString()
      });
  print(json.decode(response.body));
  if (response.statusCode == 201) {
    print("testing http connection 2");
    print(json.decode(response.body));
    return jsonDecode(response.body);
  } else {
    print("testing http connection");
    print(json.decode(response.body));
    throw Exception('Failed To Load Data');
  }
}