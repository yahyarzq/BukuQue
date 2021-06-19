import 'package:flutter/material.dart';

import 'daftarhari.dart';

class DaftarKelas extends StatelessWidget {
  final String namakelas;
  final Function ontap;

  const DaftarKelas({
    Key key,
    @required this.namakelas,
    @required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        child: ListView.separated(
            itemBuilder: (context, index) => ListWidget(
                  namakelas: 'kelas a',
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DaftarHari()));
                  },
                ),
            separatorBuilder: (context, index) => Divider(
                  height: 35,
                ),
            itemCount: 10));
  }
}

class ListWidget extends StatelessWidget {
  final String namakelas;
  final Function onTap;

  ListWidget({Key key, @required this.namakelas, @required this.onTap})
      : super(key: key);

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
          child: Center(
            child: Text(
              '''$namakelas''',
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
    );
  }
}
