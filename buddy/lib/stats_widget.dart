import 'package:buddy/dogStatus.dart';
import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StatsWidget extends StatelessWidget {

  var dogBuddy = new dogStatus(0, 2);

  @override
  Widget build(BuildContext context) {
    // main frame within navbars
    return Container(
      // this column stores in order: The feeling text, the character, and the feeling meter
        child: Column(

          children: <Widget>[

            Center(
              child: dogBuddy.emoteBubble()
              ),

            Center(
              child: dogBuddy.generalAnimation()
              ),

            Expanded(
              child: Image.asset('assets/img/greenbar.png')
               )

          ]
              
        )

    );

  }

}

