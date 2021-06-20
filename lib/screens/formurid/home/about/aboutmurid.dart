

import 'package:bukuque/screens/component/AboutCard.dart';
import 'package:bukuque/screens/usertypescreen/userselect.dart';
import 'package:flutter/material.dart';
import 'package:bukuque/component/globals.dart' as globals;

class AboutMurid extends StatelessWidget {

  AboutMurid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutCard(nama: globals.student_name, nomer: "", onPressed: (){
      globals.teacher_name = '';
      globals.student_class_id =0;
      globals.student_name= '';
      globals.teacher_id =0;
      globals.student_id =0;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => UserSelect()));
    });
  }
}

