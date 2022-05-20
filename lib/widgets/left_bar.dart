import 'package:flutter/material.dart';
import 'package:united30/app.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;
  const LeftBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 200,
          width: barWidth,
          decoration: BoxDecoration(
              color: accentHexColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
          child: Container(
            height: 60,
            width: 70,
            margin: EdgeInsets.only(
              top: 100,
              bottom: 40,
              left: 0,
              right: 50,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(50),
              ),
              color: mainHexColor,
            ),
          ),
        ),
      ],
    );
  }
}
