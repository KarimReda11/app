import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survival/utils/text.dart';

class Heat extends StatefulWidget {
  @override
  _HeatState createState() => new _HeatState();
}

class _HeatState extends State<Heat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survival Kit"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(Aid.c1, style: TextStyle(fontSize: 20.0)),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.redAccent,
                          child: Text(
                            "2",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(Aid.c2, style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    Image(
                      image: AssetImage("images/img2.jpeg"),
                      height: 400.0,
                      width: 400.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          new ExpansionTile(
            initiallyExpanded: false,
            title: Text(Aid.tile2),
            children: <Widget>[
              Text(
                Aid.an4,
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
