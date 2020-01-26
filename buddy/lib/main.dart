import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'package:fit_kit/fit_kit.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Buddy',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}
