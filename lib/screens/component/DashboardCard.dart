import 'package:flutter/cupertino.dart';
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
        height: 110.0,
        decoration: BoxDecoration(
          color: Colors.grey,
            borderRadius: BorderRadius.circular(5.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text(
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
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
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Container(
                width: 160,
                child: TextButton(
                    onPressed: onTap,
                    child: Container(
                      height: 44,
                      width: 80,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}