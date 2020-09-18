import 'package:flutter/material.dart';

class MeasurementScreen extends StatefulWidget {
  @override
  _MeasurementScreenState createState() => _MeasurementScreenState();
}

class _MeasurementScreenState extends State<MeasurementScreen> {
  @override
  Widget build(BuildContext context) {
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
                      ListTile(title: Text('Title of the item')),
                      ListTile(
                        title: Text('Title of the item2'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ExpansionTile(
            leading: Icon(
              Icons.report,
              color: Colors.red,
            ),
            title: Text('02. RCD'),
            children: <Widget>[
              ListTile(title: Text('Title of the item')),
              ListTile(
                title: Text('Title of the item2'),
              )
            ],
          )
        ],
      ),
    );
  }
}
