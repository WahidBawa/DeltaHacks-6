import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// Enter goal values here
const goal_steps = 1000;
const goal_energy = 3;

class StepsPerDay {
  final String day;
  final int clicks;
  final charts.Color color;

  StepsPerDay(this.day, this.clicks, Color color)
      : this.color = new charts.Color(
      r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class EnergyPerDay {
  final String day;
  final int energy;
  final charts.Color color;

  EnergyPerDay(this.day, this.energy, Color color)
      : this.color = new charts.Color(
      r: color.red, g: color.green, b: color.blue, a: color.alpha);
}


class StatsWidget extends StatelessWidget {

  barColorSteps(var a){
    if(a < goal_steps-200){
      return Colors.red;
    }
    else if( a < goal_steps && a > goal_steps-200){
      return Colors.yellow;
    }
    else{
      return Colors.green;
    }
  }

  barColorEnergy(var a){
    if(a < goal_energy){
      return Colors.yellow;
    }
    else{
      return Colors.green;
    }
  }



  @override
  Widget build(BuildContext context) {

    ///////////////////
    // STEPS DATA START
    ///////////////////

    // ENTER days values here

    var day1 = 1500;
    var day2 = 1200;
    var day3 = 800;
    var day4 = 700;
    var day5 = 900;
    var day6 = 1200;
    var day7 = 500;

    var data = [
      new StepsPerDay('Mon', day1, barColorSteps(day1)),
      new StepsPerDay('Tue', day2, barColorSteps(day2)),
      new StepsPerDay('Wed', day3, barColorSteps(day3)),
      new StepsPerDay('Thur', day4, barColorSteps(day4)),
      new StepsPerDay('Fri', day5, barColorSteps(day5)),
      new StepsPerDay('Sat', day6, barColorSteps(day6)),
      new StepsPerDay('Sun', day7, barColorSteps(day7)),
    ];

    var series = [
      new charts.Series(
        domainFn: (StepsPerDay clickData, _) => clickData.day,
        measureFn: (StepsPerDay clickData, _) => clickData.clicks,
        colorFn: (StepsPerDay clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = new charts.BarChart(
      series,
      animate: true,
    );
    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart,
      ),
    );

    ///////////////////
    // STEPS DATA END
    ///////////////////

    ///////////////////
    // ENERGY DATA START
    ///////////////////

    // Enter days values here

    var eday1 = 1;
    var eday2 = 2;
    var eday3 = 3;
    var eday4 = 4;
    var eday5 = 5;
    var eday6 = 2;
    var eday7 = 2;

    var data_e = [
      new EnergyPerDay('Mon', eday1, barColorEnergy(eday1)),
      new EnergyPerDay('Tue', eday2, barColorEnergy(eday2)),
      new EnergyPerDay('Wed', eday3, barColorEnergy(eday3)),
      new EnergyPerDay('Thur', eday4, barColorEnergy(eday4)),
      new EnergyPerDay('Fri', eday5, barColorEnergy(eday5)),
      new EnergyPerDay('Sat', eday6, barColorEnergy(eday6)),
      new EnergyPerDay('Sun', eday7, barColorEnergy(eday7)),
    ];

    var series_e = [
      new charts.Series(
        domainFn: (EnergyPerDay clickData, _) => clickData.day,
        measureFn: (EnergyPerDay clickData, _) => clickData.energy,
        colorFn: (EnergyPerDay clickData, _) => clickData.color,
        id: 'Clicks',
        data: data_e,
      ),
    ];

    var chart_e = new charts.BarChart(
      series_e,
      animate: true,
    );
    var chartWidget_e = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart_e,
      ),
    );


    ///////////////////
    // ENERGY DATA END
    ///////////////////

    // main frame within navbars
    return Container(
        color: Color.fromRGBO(104, 204, 204, 0.4),

        child: ListView(
          children: <Widget>[

            // WIDGET 1
            Card(
              margin: const EdgeInsets.all(30.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Color.fromRGBO(230, 230, 230, 0.4),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            Text("Welcome Harshdip\n"),
                            Text("Your weight: 88 kgs"),
                            Text("Your height: 180 cm\n"),
                            Text("Today's Values:"),
                            Text("Heart Rate: 110 bpm"),
                            Text("Steps Counted: 553"),
                            Text("Distance Walked: 225 m"),
                          ],
                        )
                    )
                ),
              ),
            ),

            // WIDGET 2
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("Your past week's steps activity"),
                  chartWidget,
                ],
              ),
            ),

            // WIDGET 3
            Container(
                color: Colors.white,
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text("Your past week's energy activity"),
                    chartWidget_e,
                  ],
                )
            ),

          ],
        )

      //child: Text(getData((getStats()))),

    );
  }

}
