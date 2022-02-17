import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_demo/developer_chart.dart';
import 'package:charts_demo/developer_series.dart';
import 'developer_series.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<DeveloperSeries> data = [
    DeveloperSeries(
        year: '2017',
        developers: 50000,
        barColor: charts.ColorUtil.fromDartColor(Colors.yellow)),
    DeveloperSeries(
        year: '2018',
        developers: 60000,
        barColor: charts.ColorUtil.fromDartColor(Colors.yellow)),
    DeveloperSeries(
        year: '2019',
        developers: 70000,
        barColor: charts.ColorUtil.fromDartColor(Colors.yellow)),
    DeveloperSeries(
        year: '2020',
        developers: 80000,
        barColor: charts.ColorUtil.fromDartColor(Colors.yellow)),
    DeveloperSeries(
        year: '2021',
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Colors.yellow)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DeveloperChart(data: data),
      ),
    );
  }
}

