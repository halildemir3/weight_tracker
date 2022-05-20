import 'package:flutter/material.dart';
import 'package:united30/widgets/left_bar.dart';
import 'package:united30/widgets/right_bar.dart';
import 'app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  late double _result = 0;
  late String _textResult = "";
  late double taban;
  late double tavan;
  late double tava;
  late double taba;
  late String fazla = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SEN DAHA NANEYİ YİMEDİN Mİ",
          style: TextStyle(
            color: accentHexColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Boy",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Kilo",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  taban = 18 * ((_h * _h) / 10000);
                  tavan = 25 * ((_h * _h) / 10000);
                  taba = taban - _w;
                  tava = _w - tavan;

                  _result = 10000 * _w / (_h * _h);

                  if (_result > 25) {
                    _textResult =
                        "İdeal Kilonuz: ${taban.toStringAsFixed(0)}-${tavan.toStringAsFixed(0)} ";
                    fazla = "+${tava.toStringAsFixed(0)}";
                  } else if (_result >= 18.5 && _result <= 25) {
                    _textResult = "İdeal Kilodasınız";
                    fazla = "";
                  } else {
                    _textResult =
                        "İdeal Kilonuz: ${taban.toStringAsFixed(0)}-${tavan.toStringAsFixed(0)}";
                    fazla = "-${taba.toStringAsFixed(0)}";
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: accentHexColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "HESAPLA",
                    style: TextStyle(
                      color: mainHexColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      //color: accentHexColor
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                _result.toStringAsPrecision(2),
                style: TextStyle(
                  fontSize: 90,
                  color: accentHexColor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                margin: EdgeInsets.only(
                  top: 5,
                  right: 10,
                  bottom: 5,
                  left: 20,
                ),
                child: Text(
                  _textResult,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Visibility(
              visible: fazla.isNotEmpty,
              child: Container(
                margin: EdgeInsets.only(
                  top: 5,
                  right: 10,
                  bottom: 5,
                  left: 20,
                ),
                child: Text(
                  fazla,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor,
                  ),
                ),
              ),
            ),
            LeftBar(barWidth: 100),
            SizedBox(
              height: 50,
            ),
            RigttBar(),
          ],
        ),
      ),
    );
  }
}
