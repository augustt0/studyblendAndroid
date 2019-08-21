import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

List<CircularStackEntry> data = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
      new CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'Q1'),
      new CircularSegmentEntry(1000.0, Colors.green[200], rankKey: 'Q2'),
      new CircularSegmentEntry(2000.0, Colors.blue[200], rankKey: 'Q3'),
      new CircularSegmentEntry(1000.0, Colors.yellow[200], rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

List<CircularStackEntry> newData = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
      new CircularSegmentEntry(500.0, Colors.red[50], rankKey: 'Q1'),
      new CircularSegmentEntry(1000.0, Colors.green[250], rankKey: 'Q2'),
      new CircularSegmentEntry(2000.0, Colors.blue[200], rankKey: 'Q3'),
      new CircularSegmentEntry(1000.0, Colors.yellow[200], rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

class PanelPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new AnimatedCircularChart(
      size: Size(500, 500),
      initialChartData: data,
      edgeStyle: SegmentEdgeStyle.round,
    );
  }
}

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Hola"),
      padding: const EdgeInsets.all(8.0),
    );

  }
}

