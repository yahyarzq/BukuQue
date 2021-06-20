import 'package:bukuque/query/activityclass.dart';
import 'package:bukuque/query/activityfuture.dart';
import 'package:flutter/material.dart';

import 'daftarhari.dart';
import 'package:bukuque/component/globals.dart' as globals;

import 'daftarmurid.dart';
import 'daftarmuridsubmitteedtask.dart';

class DaftarKelas extends StatefulWidget {
  @override
  _DaftarKelasState createState() => _DaftarKelasState();
}

class _DaftarKelasState extends State<DaftarKelas> {
  Future<TeacherClassListParserActivity> _teacherClassListActivity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _teacherClassListActivity =
        teacherClassListFutureActivity(globals.teacher_id.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<TeacherClassListParserActivity>(
          future: _teacherClassListActivity,
          builder: (context, data) {
            if (data.connectionState == ConnectionState.waiting) {
              return LinearProgressIndicator();
            } else if (data.hasError) {
              return Container(
                  child: Container(
                      child: ListView.separated(
                          itemBuilder: (context, index) => ListWidget(
                                namakelas: 'Fail Receive Data',
                                onTap: () {},
                              ),
                          separatorBuilder: (context, index) => Divider(
                                height: 35,
                              ),
                          itemCount: 10)));
            } else {
              return Container(
                  child: Container(
                      child: ListView.separated(
                          itemBuilder: (context, index) => ListWidget(
                                namakelas:
                                    data.data.data[index].className.toString(),
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context) =>
                                          DaftarMuridSubmittedtask(
                                            kelas: data
                                                .data.data[index].className
                                                .toString(),
                                            class_id: data.data.data[index].id
                                                .toString(),
                                          )));
                                },
                              ),
                          separatorBuilder: (context, index) => Divider(
                                height: 35,
                              ),
                          itemCount: data.data.data.length)));
            }
          }),
    );
  }
}

class ListWidget extends StatelessWidget {
  final String namakelas;
  final Function onTap;

  ListWidget({Key key, @required this.namakelas, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5.0)),
          child: Center(
            child: Text(
              '''$namakelas''',
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              style: TextStyle(
                height: 1.171875,
                fontSize: 20.0,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),

                /* letterSpacing: 0.0, */
              ),
            ),
          ),
        ),
      ),
    );
  }
}
