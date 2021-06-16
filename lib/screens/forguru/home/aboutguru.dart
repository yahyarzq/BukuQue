

import 'package:bukuque/screens/component/AboutCard.dart';
import 'package:flutter/material.dart';

class AboutGuru extends StatelessWidget {
  final String nama;
  final String nomer;
  final Function onPressed;
   AboutGuru({
    Key key, @required this.nama, @required this.nomer, @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutCard(nama: nama, nomer: nomer, onPressed: null,);
  }
}

