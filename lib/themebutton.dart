import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return IconButton(
        icon: Icon(
          Icons.lightbulb,
          color: Colors.white,
        ),
        onPressed: () {});
  }
}

class ThemeButton_2 extends StatelessWidget {
  const ThemeButton_2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return IconButton(
        icon: Icon(
          Icons.nightlight_round,
          color: Colors.white,
        ),
        onPressed: () {
          print(screenSize);
        });
  }
}
