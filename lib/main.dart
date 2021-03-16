import 'package:flutter/material.dart';
import 'package:login_discrete/views/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //No annoying debug banner !
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Theme color of the app
        primarySwatch: Colors.orange,
        //This makes the visual density adapt itself to the platform
        //In desktop mode, the elements will be closer together (more density)
        //This is useful if we want to port our app to a web version
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}


