import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // main frame within navbars
    return Container(
      // this column stores in order: The feeling text, the character, and the feeling meter
        child: Column(

          children: <Widget>[
            Center(
              child: Text('Just Vibin', style: TextStyle(fontSize: 35))
              ),
            Center(
              child: Image.asset("assets/img/idle-happy.gif")
              ),

            Expanded(
              child: Image.asset('assets/img/greenbar.png')
               )
              ]
        )
    );

  }

}