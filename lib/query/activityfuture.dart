
import 'dart:convert';
import 'package:bukuque/query/activityclass.dart';
import 'package:http/http.dart' as http;
//
//  teacherLoginFutureActivity
//
Future<TeacherLoginParserActivity> teacherLoginFutureActivity(String username, String password) async {
  http.Response response = await http.post(Uri.parse('http://10.0.2.2:8000/api/teacher/login'),
  body: {
    "username": username,
    "password": password
  });

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
Future<TeacherDataParserActivity> teacherDataFutureActivity(int teacherId) async {
  http.Response response = await http.post(Uri.parse('http://10.0.2.2:8000/api/teacher/teacherData'),
      body: {
        "teacher_id": teacherId
      });
  print("testing http connection outside cehcker 200 ok");
  print(json.decode(response.body));
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