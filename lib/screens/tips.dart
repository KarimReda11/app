import 'package:flutter/material.dart';
import 'package:survival/tips/fire.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => new _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 5.0, left: 5.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return Fire();
                  })),
                  child: Text(
                    "Fire",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Nutrition",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Diet",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Releasing Stress",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Flood",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Struck",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Food Safety",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Water Safety",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Earthquakes",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
