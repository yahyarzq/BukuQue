import 'package:flutter/material.dart';

class DaftarHari extends StatelessWidget {
  const DaftarHari({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '''Kelas 1A''',
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
        Container(
            child: ListView.separated(
                itemBuilder: (context ,index) => ListWidget(namahari: '21 Mei 2021',),
                separatorBuilder: (context,index) => Divider(height: 35,),
                itemCount: 10
            )
        ),

      ],
    );
  }
}

class ListWidget extends StatelessWidget {
  final String namahari;
  ListWidget({
    Key key,
    @required this.namahari
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: Align(
            alignment: Alignment.centerLeft,
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
    );
  }
}

