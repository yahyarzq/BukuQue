import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    Key key,
    @required this.nama,
    @required this.nomer, @required this.onPressed,

  }) : super(key: key);

  final String nama;
  final String nomer;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
          ),
          SizedBox(height: 15,),
          Text(
            '''$nama''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 18.0,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 0, 0, 0),

              /* letterSpacing: 0.0, */
            ),
          ),
          SizedBox(height: 15,),
          Text(
            '''$nomer''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 18.0,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 0, 0, 0),

              /* letterSpacing: 0.0, */
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xABF292)),
                minimumSize:
                MaterialStateProperty.all<Size>(Size(100, 50))),
            child: Text("Log Out"),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}