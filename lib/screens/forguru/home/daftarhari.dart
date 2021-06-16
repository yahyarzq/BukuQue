import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'daftarmurid.dart';

class DaftarHari extends StatelessWidget {
  const DaftarHari({
    Key key,
  }) : super(key: key);

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
        body: Column(
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '''Kelas 1A''',
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
            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListWidgetDate(
                          namahari: '21 Mei 2021', onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DaftarMurid()));
                    },
                        ),
                    separatorBuilder: (context, index) => Divider(
                          height: 35,
                        ),
                    itemCount: 10)),
          ],
        ),
      ),
    );
  }
}

class ListWidgetDate extends StatelessWidget {
  final String namahari;
  final Function onTap;

  ListWidgetDate({Key key, @required this.namahari, @required this.onTap}) : super(key: key);

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
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '''$namahari''',
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
      ),
    );
  }
}
