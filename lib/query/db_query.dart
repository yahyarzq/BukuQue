import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:mysql1/mysql1.dart';

Future getTesData() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2', port: 3306, user: 'root', db: 'bukuque_db'));

  // Query the database using a parameterized query
  var results = await conn
      .query('SELECT student_id, name, address, phone_number, `number`, Teacher_teacher_id, Class_class_id FROM students');
  if (results != null) {
    print("MariaDB Sukses");
    print(results);
  }else{
    print("MariaDB Gagal");
  }
  for (var row in results) {
    print('username: ${row[0]}, password: ${row[1]}');
  }
  // Finally, close the connection
  await conn.close();
}

Future<bool> getTeacherLogindata(String username,String password) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2', port: 3306, user: 'root', db: 'bukuque_db'));
  // Query the database using a parameterized query
  var results = await conn
      .query('SELECT username, password FROM teacher WHERE username = ? and password = ?',[username, password]);
  // Finally, close the connection
  await conn.close();
  if (results.isEmpty) {
    print("Login Gagal");
    return false;
  }else{
    print("Login Sukses");
    return true;
  }
}

Future<bool> getStudentLogindata(String username,String password) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2', port: 3306, user: 'root', db: 'bukuque_db'));
  // Query the database using a parameterized query
  var results = await conn
      .query('SELECT username, password FROM student WHERE username = ? and password = ?',[username, password]);
  // Finally, close the connection
  await conn.close();
  if (results.isEmpty) {
    print("Login Gagal");
    return false;
  }else{
    print("Login Sukses");
    return true;
  }
}

Future<bool> getTeacherDashboarddata(String username) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2', port: 3306, user: 'root', db: 'bukuque_db'));
  // Query the database using a parameterized query
  var results = await conn
      .query('SELECT * FROM class JOIN teacher ON teacher.Class_class_id = class.class_id WHERE teacher.name = ? ',[username]);
  // Finally, close the connection
  await conn.close();
  if (results.isEmpty) {
    print("Login Gagal");
    return false;
  }else{
    print("Login Sukses");
    return true;
  }
}


Future getTeacherDaftarKelas(String username,String password) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2', port: 3306, user: 'root', db: 'bukuque_db'));
  // Query the database using a parameterized query
  var results = await conn
      .query('SELECT * FROM class JOIN teacher ON teacher.Class_class_id = class.class_id WHERE teacher.name = ? ',[username]);
  // Finally, close the connection
  await conn.close();
}