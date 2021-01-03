import 'package:flutter/material.dart';

class ExpandableRow extends StatefulWidget {
  @override
  _ExpandableRowState createState() => _ExpandableRowState();
}

class _ExpandableRowState extends State<ExpandableRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Text(
            "2018 - present",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        SizedBox(width: 30,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 1,
                      height: double.infinity,
                    ),
                    Positioned(
                        top: 60,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
                Expanded(
                  child: Container(
                    height: 155,
                    padding: EdgeInsets.only(top: 60, bottom: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "SADA Manager",
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "asdsads belgium",
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
