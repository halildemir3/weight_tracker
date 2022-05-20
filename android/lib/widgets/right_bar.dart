import 'package:flutter/material.dart';
import 'package:united30/app.dart';

class RighttBar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  const RighttBar({Key? key, required this.barWidth, required this.barHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: barHeight,
          width: barWidth,
          decoration: BoxDecoration(
              color: accentHexColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(10),
              )),
        ),
      ],
    );
  }
}

class RigttBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
              color: accentHexColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(150),
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(10),
              )),
        ),
      ],
    );
  }
}
