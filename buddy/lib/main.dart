import 'package:buddy/buddy_widget.dart';
import 'package:buddy/dogStatus.dart';
import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'dart:math';
import 'dart:async';
import 'package:fit_kit/fit_kit.dart';

var rand;
//void main() => runApp(MyApp());
void main(){
  runApp(MyApp());
  const oneSec = const Duration(seconds:5);
  new Timer.periodic(oneSec, (Timer t) => BuddyWidget());
}



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
void makeRandom(){
  var num = new Random();
  rand = num.nextInt(600);
}

int getVal(){
  return rand;
}
