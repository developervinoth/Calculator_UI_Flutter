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
                  margin: EdgeInsets.only(top: 100),
                  height: 80,
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
                Expanded(
                  child: Column(children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyWidget(
                            buttonString: "AC",
                            textColor: 0xFF26E8C6,
                          ),
                          KeyWidget(
                            buttonString: "+/-",
                            textColor: 0xFF26E8C6,
                          ),
                          KeyWidget(
                            buttonString: "%",
                            textColor: 0xFF26E8C6,
                          ),
                          KeyWidget(
                            buttonString: "÷",
                            textColor: 0xFFEA6666,
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyWidget(
                            buttonString: "7",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "8",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "9",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "x",
                            textColor: 0xFFEA6666,
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyWidget(
                            buttonString: "4",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "5",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "6",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "-",
                            textColor: 0xFFEA6666,
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyWidget(
                            buttonString: "1",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "2",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "3",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "+",
                            textColor: 0xFFEA6666,
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KeyWidget(
                            buttonString: "Reset",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "0",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: ".",
                            textColor: 0xFFFEFEFE,
                          ),
                          KeyWidget(
                            buttonString: "=",
                            textColor: 0xFFEA6666,
                          ),
                        ]),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KeyWidget extends StatelessWidget {
  final int textColor;
  final String buttonString;
  const KeyWidget({Key key, this.buttonString, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Color(0xFF272B33),
              borderRadius: BorderRadius.circular(10)),
          width: 100,
          height: 90,
          child: Center(
            child: Text(
              buttonString,
              style: TextStyle(color: Color(textColor), fontSize: 30),
            ),
          ),
        ),
        onTap: () {
          print("Key Pressed");
        },
      ),
    );
  }
}
