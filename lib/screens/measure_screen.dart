import 'package:flutter/material.dart';
import 'package:metrel/screens/measurement_screen.dart';
import 'package:metrel/widgets/measure_pick.dart';

class MeasureScreen extends StatefulWidget {
  @override
  _MeasureScreenState createState() => _MeasureScreenState();
}

class _MeasureScreenState extends State<MeasureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IZBOR MERITEV'),
        ),
        body: Column(
          children: [
            MeasurePick(
              title: 'Funkcionalni test',
              meathod: 'Ročni vnos',
              infoPress: () {
                print('Info button pressed');
              },
              addPress: () {
                print('Add button pressed');
              },
              measurePress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MeasurementScreen(),
                ),
              ),
            ),
            MeasurePick(
              title: 'Moč',
              meathod: 'Rezultati: S, I',
              infoPress: () {
                print('Info button pressed');
              },
              addPress: () {
                print('Add button pressed');
              },
              measurePress: () {
                print('Measure button pressed');
              },
            ),
            MeasurePick(
              title: 'I_sub',
              meathod: 'Nadomestni uhajavi tok',
              infoPress: () {
                print('Info button pressed');
              },
              addPress: () {
                print('Add button pressed');
              },
              measurePress: () {
                print('Measure button pressed');
              },
            ),
          ],
        ));
  }
}
