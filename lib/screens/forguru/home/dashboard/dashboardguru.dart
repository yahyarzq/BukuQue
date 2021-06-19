import 'package:bukuque/query/activityclass.dart';
import 'package:bukuque/query/activityfuture.dart';
import 'package:bukuque/screens/component/DashboardCard.dart';
import 'package:flutter/material.dart';
import 'package:bukuque/component/globals.dart' as globals;

class DashboardGuru extends StatefulWidget {
  const DashboardGuru({
    Key key,
  }) : super(key: key);

  @override
  _DashboardGuruState createState() => _DashboardGuruState();
}

class _DashboardGuruState extends State<DashboardGuru> {
  Future<TeacherDataParserActivity> _teacherDataActivity;
  
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    _teacherDataActivity = teacherDataFutureActivity(globals.teacher_id);
    print("dhuhd");
    print(globals.teacher_id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<TeacherDataParserActivity>(
          future: _teacherDataActivity,
          builder: (context,data) {
            if (data.connectionState == ConnectionState.waiting) {
              return LinearProgressIndicator();
            }
            else if (data.hasError) {
              print("TESTING MARKER");
              return Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: "-", title: "Kelas", onTap: (){}),
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: "-", title: "Data Butuh Reviews", onTap: (){}),
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: "-", title: "Report", onTap: (){})
                  ],
                ),
              );
            }else{
              return Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: data.data.teacherData1[0].totalClass.toString(), title: "Kelas", onTap: (){}),
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: data.data.teacherData2[0].totalBooksUnreviewed.toString(), title: "Data Butuh Reviews", onTap: (){}),
                    SizedBox(height: 20),
                    DashboardCard(totalnumber: "20", title: "Report", onTap: (){})
                  ],
                ),
              );
            }
          }

      ),
    );
  }
}





