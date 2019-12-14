import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:survival/screens/home.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  textSection(),
                  buttonSection(),
                ],
              ),
      ),
    );
  }

  submit(String rate, String q1, String q2, String q3) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'rate': rate,
      'question1': q1,
      'question2': q2,
      'question3': q3,
    };
    var jsonResponse = null;
    var response = await http.post(
        "https://salma-d0b95.firebaseio.com/feedback.json",
        body: json.encode(data));
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: rateController.text == "" ||
                q1Controller.text == "" ||
                q2Controller.text == "" ||
                q3Controller.text == ""
            ? null
            : () {
                setState(() {
                  _isLoading = true;
                });
                submit(rateController.text, q1Controller.text,
                    q2Controller.text, q3Controller.text);
              },
        elevation: 0.0,
        color: Colors.redAccent,
        child: Text("Submit", style: TextStyle(color: Colors.white70)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  final TextEditingController rateController = new TextEditingController();
  final TextEditingController q1Controller = new TextEditingController();
  final TextEditingController q2Controller = new TextEditingController();
  final TextEditingController q3Controller = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: rateController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value.isEmpty) {
                return 'Rate is required';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "rate our application?",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Rate on a scale of 1 to 10",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white12)),
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
          TextFormField(
            controller: q1Controller,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.black),
            maxLines: 4,
            validator: (value) {
              if (value.isEmpty || value.length < 25) {
                return 'Question1 is required and should be 25+ characters long.';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Do you wish adding other features?",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Please,tell us your opinion",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white12)),
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
          TextFormField(
            controller: q2Controller,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.black),
            maxLines: 4,
            validator: (value) {
              if (value.isEmpty) {
                return 'Question4 is required and should be 25+ characters long.';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Did you have any diffuculties while using it?",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "tell us your opinion",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white12)),
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
          TextFormField(
            controller: q3Controller,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.black),
            maxLines: 4,
            validator: (value) {
              if (value.isEmpty || value.length < 25) {
                return 'Question1 is required and should be 25+ characters long.';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Do you have any other comments?",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "tif your answer was \"yes\",tell us your comment",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white12)),
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ],
      ),
    );
  }
}
