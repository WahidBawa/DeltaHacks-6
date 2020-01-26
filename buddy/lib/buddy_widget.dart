import 'package:buddy/main.dart';
import 'package:flutter/material.dart';

class BuddyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(getData((getStats()))),
    );
  }
}
