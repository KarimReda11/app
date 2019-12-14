import 'package:flutter/material.dart';
import 'package:survival/emergency/heat.dart';

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => new _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
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
                    return Heat();
                  })),
                  child: Text(
                    "Heat stroke",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sings and bites",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Spiders and scorpions",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Jellyfish",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Venomous snakes bites",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Bleeding",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Diabetic emergency",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sprains and strains",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Eye injuries",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Oil burn",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Broken bone",
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
