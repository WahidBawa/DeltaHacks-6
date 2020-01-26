import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuddyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // main frame within navbars
    return Container(

      child: Column(
        children: <Widget>[
          // WIDGET 1
          Card(
            margin: const EdgeInsets.all(30.0),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Color.fromRGBO(230, 230, 230, 0.4),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Text("Welcome @User"),
                          Text("Your weight: xx"),
                          Text("Your height: xx"),
                        ],
                      )
                  )
              ),
            ),
          ),

          // WIDGET 2
          Card(
            margin: const EdgeInsets.all(20.0),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Color.fromRGBO(230, 230, 230, 0.4),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Text("this is ur steps graph data"),
                        ],
                      )
                  )
              ),
            ),
          ),

        ],
      )

      //child: Text(getData((getStats()))),

    );
  }
}
