import 'package:flutter/material.dart';
import 'package:metrel/data/data.dart';

class MeasurementScreen extends StatefulWidget {
  @override
  _MeasurementScreenState createState() => _MeasurementScreenState();
}

class _MeasurementScreenState extends State<MeasurementScreen> {
  @override
  Widget build(BuildContext context) {
    double treshold = 0.6;
    List<double> values = [];

    for (var i = 0; i < rdcMeasurements.length; i++) {
      values.add(rdcMeasurements[i].measurementValue);
    }

    // Max value from list
    double maxValue = values.reduce((curr, next) => curr > next ? curr : next);

    return Scaffold(
      appBar: AppBar(
        title: Text('REZULTATI MERITEV'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            color: Colors.blueGrey[100],
            child: ExpansionTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('01. Tok Dotika'),
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Title of the item'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.blueGrey[100],
            child: ExpansionTile(
              leading: maxValue < treshold
                  ? Icon(
                      Icons.report,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
              title: Text('02. RCD'),
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200.0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '${rdcMeasurements[0].name}',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${rdcMeasurements[0].measurementValue.toStringAsFixed(2)} mA',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '${rdcMeasurements[1].name}',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${rdcMeasurements[1].measurementValue.toStringAsFixed(2)} mA',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                color: Theme.of(context).primaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Uredi parametre',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: FlatButton(
                                  textColor: Colors.white,
                                  color: Theme.of(context).primaryColor,
                                  onPressed: () {},
                                  child: Text(
                                    'Ponovi',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.blueGrey[100],
            child: ExpansionTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('03. Diferencialni tok'),
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Title of the item'),
                      ),
                      ListTile(
                        title: Text('Title of the item2'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
