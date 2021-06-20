import 'package:bukuque/query/activityfuture.dart';
import 'package:bukuque/query/teacherClassStudentListParserActivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'daftarmuridtask.dart';
import 'package:bukuque/component/globals.dart' as globals;
import 'package:intl/intl.dart';

class DaftarMuridSubmittedtask extends StatefulWidget {
  final String class_id;
  final String kelas;

  const DaftarMuridSubmittedtask({
    Key key,
    @required this.kelas,
    @required this.class_id,
  }) : super(key: key);

  @override
  _DaftarMuridSubmittedtaskState createState() =>
      _DaftarMuridSubmittedtaskState();
}

class _DaftarMuridSubmittedtaskState extends State<DaftarMuridSubmittedtask> {
  Future<TeacherClassStudentListParserActivity>
      _teacherClassStudentListActivity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _teacherClassStudentListActivity = teacherClassStudentListFutureActivity(
        globals.teacher_id.toString(), widget.class_id.toString());
  }
  String dateConverter (var data){
    var formatter = new DateFormat('dd-MM-yyyy');
    String formatteddate = formatter.format(data);
    return formatteddate;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: false,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            '''BukuQue''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 36.0,
              fontFamily: 'Damion',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255),
              /* letterSpacing: 0.0, */
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '''${widget.kelas}''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 18.0,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),

                    /* letterSpacing: 0.0, */
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  child: FutureBuilder<TeacherClassStudentListParserActivity>(
                      future: _teacherClassStudentListActivity,
                      builder: (context, data) {
                        if (data.connectionState == ConnectionState.waiting) {
                          return LinearProgressIndicator();
                        } else if (data.hasError) {
                          return Container(
                              child: Container(
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          ListWidgetwithDetail(
                                            nama: 'Fail Receive Data',
                                            nomer: '',
                                            tanggal: '',
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DaftarMuridTask()));
                                            },
                                          ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            height: 35,
                                          ),
                                      itemCount: 1)));
                        } else {
                          return Container(
                              child: Container(
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          ListWidgetwithDetail(
                                            nama: data
                                                .data.data[index].studentsName
                                                .toString(),
                                            nomer: data
                                                .data.data[index].studentsNumber
                                                .toString(),
                                            tanggal: dateConverter(data.data.data[index]
                                                .dateSubmitted),
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DaftarMuridTask()));
                                            },
                                          ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            height: 35,
                                          ),
                                      itemCount: data.data.data.length)));
                        }
                      })),
            )
          ],
        ),
      ),
    );
  }
}

class ListWidgetwithDetail extends StatelessWidget {
  final String nama;
  final String nomer;
  final String tanggal;
  final Function onTap;

  ListWidgetwithDetail(
      {Key key,
      @required this.nama,
      @required this.nomer,
      @required this.onTap,
      @required this.tanggal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''$nama''',
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '''$nomer''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 16.0,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0),

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                      Text(
                        '''$tanggal''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 18.0,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0),

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                      TextButton(
                          onPressed: onTap,
                          child: Container(
                            height: 32,
                            width: 69,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color.fromARGB(255, 63, 155, 61)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '''Detail''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 18.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
