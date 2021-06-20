
import 'package:bukuque/component/constants.dart';
import 'package:bukuque/query/activityclass.dart';
import 'package:bukuque/query/activityfuture.dart';
import 'package:bukuque/query/db_query.dart';
import 'package:bukuque/query/sharedpreferencesactivity.dart';
import 'package:bukuque/query/studentsLoginParserActivity.dart';
import 'package:bukuque/screens/forguru/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bukuque/component/globals.dart' as globals;

import '../home/home.dart';

class LoginForMurid extends StatefulWidget {
  @override
  _LoginForMurid createState() => _LoginForMurid();
}

class _LoginForMurid  extends State<LoginForMurid> {
  final textFieldUserController = TextEditingController();
  final textFieldPassController = TextEditingController();
  bool _passwordVisible;
  String _username;
  String _password;
  String errorTextUser;
  String errorTextPass;
  Future<StudentsLoginParserActivity> _studentsLoginActivity;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;

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
  void dispose() {
    textFieldUserController.dispose();
    textFieldPassController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: kPrimaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      Text(
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '''for murid''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 18.0,
                              fontFamily: 'Damion',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 32.0,
                              height: 32.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Image.asset(
                                  "assets/images/d620c206f927d2a64b9fd482e0eafec7781cf010.png",
                                  color: null,
                                  fit: BoxFit.cover,
                                  width: 32.0,
                                  height: 32.0,
                                  colorBlendMode: BlendMode.dstATop,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                controller: textFieldUserController,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    errorText: this.errorTextUser),
                                validator: (value) {
                                  if (value.isEmpty ) {
                                    return 'Please enter a valid Username.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    textFieldUserController.addListener(() {
                                      this._username =
                                          textFieldUserController.text;
                                    });
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 350,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 32.0,
                              height: 32.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Image.asset(
                                  "assets/images/6037fea0ad77d0cb14d91ea09957f422bbf89b5a.png",
                                  color: null,
                                  fit: BoxFit.cover,
                                  width: 32.0,
                                  height: 32.0,
                                  colorBlendMode: BlendMode.dstATop,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                controller: textFieldPassController,
                                keyboardType: TextInputType.text,
                                obscureText: !_passwordVisible,
                                obscuringCharacter: '*',
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  errorText: this.errorTextPass,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color:
                                        Theme.of(context).primaryColorDark),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter a valid Password.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    textFieldPassController.addListener(() {
                                      this._password =
                                          textFieldPassController.text;
                                    });
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                "Belum Daftar, Daftar Disini?",
                                style:
                                TextStyle(fontSize: 17, color: Colors.black45),
                              ),
                              onPressed: () {
                                setState(() {
                                  _showAlertDialog("Fitur Belum Ada");
                                });
                              },
                            ),
                            TextButton(
                              child: Text(
                                "Forget Password?",
                                style:
                                TextStyle(fontSize: 17, color: Colors.black45),
                              ),
                              onPressed: () {
                                setState(() {
                                  _showAlertDialog("Fitur Belum Ada");
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xABF292)),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(100, 50))),
                  child: Text("Login"),
                  onPressed: () async {
                    textFieldUserController.addListener(() {
                      this._username =
                          textFieldUserController.text;
                    });
                    textFieldPassController.addListener(() {
                      this._password =
                          textFieldPassController.text;
                    });
                    var fjpof  = await studentsLoginFutureActivity(_username,_password);
                    if(fjpof.status){
                      globals.student_id = fjpof.studentsId[0].id;
                      globals.student_name = fjpof.studentsId[0].name;
                      globals.student_class_id = fjpof.studentsId[0].studentClassId;
                      globals.student_teacher_id = fjpof.studentsId[0].studentTeacherId;
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomeMurid()));
                    }else{
                      _showAlertDialog('Cek Username Dan Password Anda');
                    }
                    setState(()  {

                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
