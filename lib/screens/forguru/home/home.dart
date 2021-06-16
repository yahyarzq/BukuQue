
import 'package:bukuque/component/constants.dart';
import 'package:bukuque/screens/component/DashboardCard.dart';
import 'package:bukuque/screens/forguru/home/aboutguru.dart';
import 'package:bukuque/screens/forguru/home/daftarkelas.dart';
import 'package:flutter/material.dart';

import 'dashboardguru.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    DashboardGuru(),
    DaftarKelas(namakelas: 'Kelas A', ontap: (){},),
    AboutGuru(nama: 'ANDI', nomer: "7343478", onPressed: (){},)
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: false,
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
        body: Container(
          child: _children[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          //backgroundColor: kPrimaryColor,
          onTap: onTabTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'List'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),
          ],
        ),
      ),
    );
  }

}

