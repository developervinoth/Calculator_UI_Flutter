import 'dart:ui';

import 'package:flutter/material.dart';
import 'themebutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF22252D),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF292D36),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ThemeButton(), ThemeButton_2()],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "1655434",
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                      ),
                    ],
                  ),
                ),
                NumberPad(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NumberPad extends StatelessWidget {
  const NumberPad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xFF292D36),
          ),
          height: 200,
          width: deviceWidth,
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF272B33),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "AC",
                      style: TextStyle(
                          color: Color(0xFF26E8C6),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                  onTap: () {
                    print("AC Button is Clicked");
                  },
                ),
              ],
            ),
          )),
    );
  }
}
