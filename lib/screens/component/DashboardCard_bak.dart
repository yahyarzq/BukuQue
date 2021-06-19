import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String totalnumber;
  final String title;
  final Function onTap;
  DashboardCard({
    Key key,
    @required this.totalnumber,
    @required this.title,
    @required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 360.0,
        height: 130.0,
        decoration: BoxDecoration(
          color: Colors.grey,
            borderRadius: BorderRadius.circular(5.0)),
        child: Stack(
            clipBehavior: Clip.none, fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 31.0,
                top: 13.0,
                right: null,
                bottom: null,
                width: 67.0,
                height: 54.0,
                child: Text(
                  '''$totalnumber''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 36.0,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 12, 12, 12),
                    /* letterSpacing: 0.0, */
                  ),
                ),
              ),
              Positioned(
                left: 211.0,
                top: 30.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 34.0,
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 86.0,
                    height: 34.0,
                    child: Stack(
                        clipBehavior: Clip.none, fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            right: null,
                            bottom: null,
                            width: 86.0,
                            height: 34.0,
                            child: Container(
                              width: 86.0,
                              height: 34.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 55, 136, 53),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '''lihat''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
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
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Positioned(
                left: 31.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 100.0,
                //height: 30.0,
                child: Text(
                  '''$title''',
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
              )
            ]),
      ),
    );
  }
}