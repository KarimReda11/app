import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survival/utils/text.dart';

class Fire extends StatefulWidget {
  @override
  _FireState createState() => new _FireState();
}

class _FireState extends State<Fire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survival Kit"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          new ExpansionTile(
            initiallyExpanded: false,
            title: Text(Aid.tile1),
            children: <Widget>[
              Text(
                Aid.ant1,
                style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
                textAlign: TextAlign.start,
              ),
              Text(
                Aid.an1,
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              Text(
                Aid.ant2,
                style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
              ),
              Text(
                Aid.an2,
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              Text(
                Aid.ant3,
                style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
              ),
              Text(
                Aid.an3,
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
