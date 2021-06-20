import 'package:bukuque/component/constants.dart';
import 'file:///C:/Users/PC/AndroidStudioProjects/bukuque/lib/screens/forguru/loginscreen/loginforguru.dart';
import 'file:///C:/Users/PC/AndroidStudioProjects/bukuque/lib/screens/formurid/loginscreen/loginformurid.dart';
import 'package:flutter/material.dart';

class UserSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 80),
              Text(
                '''Login sebagai''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.171875,
                  fontSize: 20.0,
                  fontFamily: 'Cuprum',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 255, 255, 255),

                  /* letterSpacing: 0.0, */
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white54),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(300, 50))),
                child: Text("Guru"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginForGuru()));
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white54),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(300, 50))),
                child: Text("Murid"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginForMurid()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
