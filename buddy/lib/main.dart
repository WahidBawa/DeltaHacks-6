import 'package:buddy/placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer';


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

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
  final record = Record.fromSnapshot(data);

  return Padding(
    key: ValueKey(record.day),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ListTile(
        title: Text(record.day),
        trailing: Text(record.heartRate.toString()),
        onTap: () => print(record),
      ),
    ),
  );
}

class Record {
  final String day;
  final String heartRate;
  final String energy;
  final String distance;
  final String stepCount;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['day'] != null),
        assert(map['heartrate'] != null),
        assert(map['distance'] != null),
        assert(map['energy'] != null),
        assert(map['stepCount'] != null),
        day = map['day'],
        heartRate = map['heartrate'],
        distance = map['distance'],
        energy = map['energy'],
        stepCount = map['stepCount'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$day:$heartRate:$stepCount:$distance:$energy>";
}
Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
  return ListView(
    padding: const EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildBody(BuildContext context) {
  return StreamBuilder<QuerySnapshot> (
    stream: Firestore.instance.collection("exerciseData").snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();

      return _buildList(context, snapshot.data.documents);
    },
  );
}

Future<List<List<FitData>>> getStats() async {
  List<List<FitData>> stats = [];
  List<DataType> toTrack = [DataType.HEART_RATE, DataType.ENERGY, DataType.STEP_COUNT, DataType.DISTANCE];
  for (var stat in toTrack)
    {
      stats.add(await FitKit.read(
        stat,
        dateFrom: DateTime.now().subtract(Duration(days: 5)),
        dateTo: DateTime.now(),
      )
      );
  }
  return stats;
}

String getData(Future<List<List<FitData>>> data) {
  String res = "Data: ";
  data.then((val) {
    List<List<FitData>> d = val;
    for (List<FitData> list in d) {
      for (FitData item in list) {
        res += item.toString();
      }
    }
  });
  return res;
}
