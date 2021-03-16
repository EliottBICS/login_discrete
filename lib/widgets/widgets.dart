import 'package:flutter/material.dart';

//This is my personnalized appbar content (the widget at the top of the screen)
//It has "context" as an argument, which is its relative position compared to the
//other widgets : https://api.flutter.dev/flutter/widgets/BuildContext-class.html
Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(style: TextStyle(fontSize: 22), children: <TextSpan>[
      TextSpan(text: 'Discrete', style: TextStyle(fontWeight: FontWeight.w300)),
      TextSpan(text: 'Helper', style: TextStyle(fontWeight: FontWeight.bold)),
    ]),
  );
}
