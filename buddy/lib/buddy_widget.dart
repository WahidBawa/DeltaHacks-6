import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:buddy/dogStatus.dart';

class BuddyWidget extends StatelessWidget {
  var val = makeRandom();
  var dogBuddy = new dogStatus(getVal() <= 200 ? 0 : (getVal() <= 400 ? 1 : 2), (getVal() / 100).round() == 0 ? (getVal() / 100).round() + 1 : (getVal() / 100).round());
//  var dogBuddy = new dogStatus(2, 5);

  @override
  Widget build(BuildContext context) {
    // main frame within navbars
    return Container(
      // this column stores in order: The feeling text, the character, and the feeling meter
      color: Color.fromRGBO(104, 204, 204, 0.4),
        child: Column(

            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                  child:
                  Card(
                    child: InkWell(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          color: Color.fromRGBO(110, 230, 230, 0.4),
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  /*******************
                                  * change emotes here
                                  ********************/
                                  dogBuddy.emoteBubble(),
                                  dogBuddy.msg(),
                                ],
                              )
                          )
                      ),
                    ),
                  ),
              ),

              Center(
                  child: Column(
                    children: <Widget>[
                      dogBuddy.generalAnimation(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(70.0),
                        child: new Column(

                          children: <Widget>[
                            Text("Your today's goal progress"),
                              new LinearPercentIndicator(
                                padding: const EdgeInsets.all(20.0),
                              lineHeight: 14.0,
                              percent: 0.7, // CHANGED
                              backgroundColor: Colors.grey,
                              progressColor: Colors.green,
                              ),
                          ],
                          )
                      ),
                    ],
                  )
              ),
            ]
        )
    );
  }
}
