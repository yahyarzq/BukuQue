import 'package:bukuque/query/activityclass.dart';
import 'package:bukuque/query/activityfuture.dart';
import 'package:bukuque/query/studentsDataParserActivity.dart';
import 'package:bukuque/screens/component/DashboardCard.dart';
import 'package:flutter/material.dart';
import 'package:bukuque/component/globals.dart' as globals;

class DashboardMurid extends StatefulWidget {
  const DashboardMurid({
    Key key,
  }) : super(key: key);

  @override
  _DashboardMuridState createState() => _DashboardMuridState();
}

class _DashboardMuridState extends State<DashboardMurid> {
  Future<StudentsDataParserActivity> _studentsDataActivity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _studentsDataActivity =
        studentsDataFutureActivity(globals.student_id.toString(),globals.student_class_id.toString());
    print("dhuhd");
    print(globals.student_id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<StudentsDataParserActivity>(
          future: _studentsDataActivity,
          builder: (context, data) {
            if (data.connectionState == ConnectionState.waiting) {
              return LinearProgressIndicator();
            } else if (data.hasError) {
              print("TESTING MARKER");
              return Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 20),
                    DashboardCard(
                        totalnumber: "-", title: "Data Terkirim", onTap: () {}),
                    SizedBox(height: 20),
                    
                  ],
                ),
              );
            } else {
              return Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 20),
                    DashboardCard(
                        totalnumber:
                            data.data.studentsData1[0].totalBooks.toString(),
                        title: "Data Terkirim",
                        onTap: () {}),
                    SizedBox(height: 20),
                    
                  ],
                ),
              );
            }
          }),
    );
  }
}
