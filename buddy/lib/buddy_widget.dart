import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BuddyWidget extends StatelessWidget {

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
                                  Text('Just Vibin\'', style: TextStyle(fontSize: 30)),
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
                      Image.asset("assets/img/idle-happy.gif", height: 200,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: new LinearPercentIndicator(
                          padding: const EdgeInsets.all(70.0),
                          lineHeight: 14.0,
                          percent: 0.7,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.green,
                        ),
                      ),
                    ],
                  )
              ),

            ]

        )

    );

  }
}
