import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaftarMuridTask extends StatefulWidget {
  const DaftarMuridTask({
    Key key,
  }) : super(key: key);

  @override
  _DaftarMuridTaskState createState() => _DaftarMuridTaskState();
}

class _DaftarMuridTaskState extends State<DaftarMuridTask> {
  bool _subuh = false;
  bool _dzuhur = false;
  bool _ashar = false;
  bool _maghrib = false;
  bool _isya = false;
  String _surat;

  bool _mengaji = false;
  bool _tugas = false;
  bool _sebelum = false;
  bool _bangun = false;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''201928392''',
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
                Container(
                  height: 70,
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '''AHmad Iqnalk''',
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
                )
              ],
            ),
            Expanded(
                child: Container(
                  width: 350,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          '''Sholat''',
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              value: _subuh,
                              onChanged: (bool value) {
                                setState(() {
                                  _subuh = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              value: _dzuhur,
                              onChanged: (bool value) {
                                setState(() {
                                  _dzuhur = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              value: _ashar,
                              onChanged: (bool value) {
                                setState(() {
                                  _ashar = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              value: _maghrib,
                              onChanged: (bool value) {
                                setState(() {
                                  _maghrib = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              value: _isya,
                              onChanged: (bool value) {
                                setState(() {
                                  _isya = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '''Subuh''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          Text(
                            '''dzuhur''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          Text(
                            '''ashar''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          Text(
                            '''Magrib''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          Text(
                            '''Isya''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            '''Saya Membaca surat pendek''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      ),
                      DropdownButton<String>(
                        value: _surat,
                        //elevation: 5,
                        style: TextStyle(color: Colors.black),

                        items: <String>[
                          'An-Naas',
                          'Al-Falaq',
                          'Al-Ikhlas',
                          'Al-Lahab',
                          'An-Nasr',
                          'Al-Kafirun',
                          'Al-Maun',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          "Pilih Surat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _surat = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                          title: Text(
                            '''Mengaji jilid / Al- quran''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 16.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          value: _mengaji,
                          onChanged: (bool value) {
                            setState(() {
                              _mengaji = value;
                            });
                          }),
                      CheckboxListTile(
                          title: Text(
                            '''Mengerjakan tugas''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 16.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          value: _tugas,
                          onChanged: (bool value) {
                            setState(() {
                              _tugas = value;
                            });
                          }),
                      CheckboxListTile(
                          title: Text(
                            '''Berdoa sebelum tidur''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 16.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          value: _sebelum,
                          onChanged: (bool value) {
                            setState(() {
                              _sebelum = value;
                            });
                          }),
                      CheckboxListTile(
                          title: Text(
                            '''Saya Berdoa bangun tidur''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 16.0,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          value: _bangun,
                          onChanged: (bool value) {
                            setState(() {
                              _bangun = value;
                            });
                          }),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(Color(0x7AB665)),
                                    minimumSize:
                                    MaterialStateProperty.all<Size>(Size(100, 50))),
                                onPressed: () {},
                                child: Text("Beri Tanggapan"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 60,)
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

