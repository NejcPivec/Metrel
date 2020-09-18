import 'package:flutter/material.dart';

class MeasurePick extends StatelessWidget {
  final String title;
  final String meathod;
  final Function infoPress;
  final Function addPress;
  final Function measurePress;

  const MeasurePick(
      {Key key,
      this.title,
      this.meathod,
      this.infoPress,
      this.addPress,
      this.measurePress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Container(
            height: 120.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              /*  mainAxisAlignment: MainAxisAlignment.center, */
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    meathod,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton.icon(
                          textColor: Colors.white,
                          icon: Icon(Icons.info),
                          color: Theme.of(context).primaryColor,
                          onPressed: infoPress,
                          label: Text(
                            'Info',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        FlatButton.icon(
                          textColor: Colors.white,
                          icon: Icon(Icons.add),
                          color: Theme.of(context).primaryColor,
                          onPressed: addPress,
                          label: Text(
                            'Dodaj',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          color: Theme.of(context).primaryColor,
                          onPressed: measurePress,
                          child: Text(
                            'Meritve',
                            style: TextStyle(
                              fontSize: 18.0,
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
        ),
      ],
    );
  }
}
