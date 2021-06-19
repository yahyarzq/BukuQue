import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'daftarmuridtask.dart';

class DaftarMurid extends StatelessWidget {
  const DaftarMurid({
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
                  '''22 Mei 2021''',
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
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListWidgetwithDetail(
                          nama: '21 Mei 2021',
                          nomer: '67567567',
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => DaftarMuridTask()));
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

class ListWidgetwithDetail extends StatelessWidget {
  final String nama;
  final String nomer;
  final Function onTap;

  ListWidgetwithDetail(
      {Key key,
      @required this.nama,
      @required this.nomer,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5.0)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '''$nomer''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 14.0,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),

                    /* letterSpacing: 0.0, */
                  ),
                ),
                Text(
                  '''$nama''',
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
        ),
      ),
    );
  }
}
