import 'package:buddy/dogStatus.dart';
import 'package:buddy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get the course document using a stream
    Stream<DocumentSnapshot> courseDocStream = Firestore.instance
        .collection('exerciseData')
        .document('day1')
        .snapshots();

    return StreamBuilder<DocumentSnapshot>(
        stream: courseDocStream,
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {

            // get course document
            var dataMap = snapshot.data.data;
            // get sections from the document
            var heartRate = dataMap['heartRate'];
            var stepsCounted = dataMap['stepCounter'];
            var energy = dataMap['energy'];
            var distance = dataMap['distance'];

            print(distance + energy + stepsCounted + heartRate);
            // build list using names from sections
            return Container(
            );
          } else {
            return Container();
          }
        });
  }
}