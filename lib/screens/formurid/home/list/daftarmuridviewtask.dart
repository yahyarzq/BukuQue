
import 'package:bukuque/query/activityfuture.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bukuque/component/globals.dart' as globals;

class DaftarMuridViewTask extends StatefulWidget {
  const DaftarMuridViewTask({
    Key key,
  }) : super(key: key);

  @override
  _DaftarMuridTaskState createState() => _DaftarMuridTaskState();
}

class _DaftarMuridTaskState extends State<DaftarMuridViewTask> {
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
  String is_nugas;String is_ngaji;String is_doabanguntidur;String is_doabelumtidur;
  String book_content;String is_subuh;String is_dzuhur;String is_azhar;String is_maghrib;
  String is_isya;String bookisreviewed = '0';String Surah_id;

  String dateNow(){
    var datenow = DateFormat('dd-MM-yyyy').format(DateTime.now());
    return datenow.toString();
  }

  _showAlertDialog(String message) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                          '''${dateNow()}''',
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
                          '''${globals.student_name}''',
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
                    child: SingleChildScrollView(
                      child: Container(
                        width: 600,
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
                                        if(value){
                                          is_subuh = "1";
                                        }else{
                                          is_subuh = "0";
                                        }
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
                                        if(value){
                                          is_dzuhur = "1";
                                        }else{
                                          is_dzuhur = "0";
                                        }
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
                                        if(value){
                                          is_azhar = "1";
                                        }else{
                                          is_azhar = "0";
                                        }
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
                                        if(value){
                                          is_maghrib = "1";
                                        }else{
                                          is_subuh = "0";
                                        }
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
                                        if(value){
                                          is_isya = "1";
                                        }else{
                                          is_isya = "0";
                                        }
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
                                  if(value == 'An-Naas'){
                                    Surah_id = '114';
                                  }
                                  else if (value == 'Al-Falaq'){
                                    Surah_id = '113';
                                  }
                                  else if (value == 'Al-Ikhlas'){
                                    Surah_id = '112';
                                  }
                                  else if (value == 'Al-Nasr'){
                                    Surah_id = '110';
                                  }
                                  else if (value == 'Al-Kafirun'){
                                    Surah_id = '109';
                                  }
                                  else if (value == 'Al-Maun'){
                                    Surah_id = '107';
                                  }else{
                                    Surah_id = '0';
                                  }

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
                                    if(value){
                                       is_ngaji= "1";
                                    }else{
                                      is_ngaji = "0";
                                    }
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
                                    if(value){
                                      is_nugas= "1";
                                    }else{
                                      is_nugas = "0";
                                    }
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
                                    if(value){
                                      is_doabelumtidur= "1";
                                    }else{
                                      is_doabelumtidur = "0";
                                    }
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
                                    if(value){
                                      is_doabanguntidur= "1";
                                    }else{
                                      is_doabanguntidur = "0";
                                    }
                                    _bangun = value;
                                  });
                                }),
                            Container(
                              child: Center(
                                child: Text(
                                  '''Hari Aku Berbuat Baik''',
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
                            Container(
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
                                      onPressed: () async{
                                        await studentsBooksSubmitFutureActivity(
                                            is_nugas, is_ngaji, is_doabanguntidur, is_doabelumtidur,
                                            book_content, is_subuh, is_dzuhur, is_azhar, is_maghrib,
                                            is_isya, bookisreviewed, Surah_id);
                                        setState(() {
                                          _showAlertDialog("Tugas Berhasil Dikirim");
                                        });
                                      },
                                      child: Text("Kirim"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 60,)
                          ],
                        ),
                      ),
                    )
                ),

          ],
        ),
      ),
    );
  }
}

