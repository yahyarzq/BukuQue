import 'package:bukuque/screens/component/DashboardCard.dart';
import 'package:flutter/material.dart';

class DashboardGuru extends StatelessWidget {
  const DashboardGuru({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          DashboardCard(totalnumber: "20", title: "Kelas", onTap: (){}),
          SizedBox(height: 20),
          DashboardCard(totalnumber: "20", title: "Data Butuh Reviews", onTap: (){}),
          SizedBox(height: 20),
          DashboardCard(totalnumber: "20", title: "Report", onTap: (){})
        ],
      ),
    );
  }
}

