import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: ListView(
          padding: EdgeInsets.only(top: 50.0),
          children: [
            _buildMarquee(),
            _buildComplexMarquee(),
          ].map(_wrapWithStuff).toList(),
        ),
      ),
    );
  }

  Widget _buildMarquee() {
    return Marquee(
      text: '<span style="color:#1abc9c">Test. &nbsp; &nbsp;</span>&nbsp;<strong>message. &nbsp; &nbsp;</strong>&nbsp;<span style="color:#9b59b6">by</span>&nbsp; &nbsp; &nbsp;&nbsp;<span style="color:#f39c12">Sandeep &nbsp;</span>',
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      text: 'Some sample text that takes some space.',
      style: TextStyle(fontWeight: FontWeight.bold),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 100.0,
      pauseAfterRound: Duration(seconds: 1),
      showFadingOnlyWhenScrolling: true,
      fadingEdgeStartFraction: 0.1,
      fadingEdgeEndFraction: 0.1,
      numberOfRounds: 3,
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(height: 50.0, color: Colors.white, child: child),
    );
  }
}
