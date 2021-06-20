

import 'package:bukuque/screens/component/AboutCard.dart';
import 'package:bukuque/screens/usertypescreen/userselect.dart';
import 'package:flutter/material.dart';
import 'package:bukuque/component/globals.dart' as globals;

class AboutGuru extends StatelessWidget {
  final String nama;
  final String nomer;
  final Function onPressed;
   AboutGuru({
    Key key, @required this.nama, @required this.nomer, @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutCard(nama: globals.teacher_name, nomer: nomer, onPressed: (){
      globals.teacher_name = '';
      globals.student_class_id =0;
      globals.student_name= '';
      globals.teacher_id =0;
      globals.student_id =0;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => UserSelect()));
    },);
  }
}

