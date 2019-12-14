import 'package:flutter/material.dart';
import 'package:survival/screens/home.dart';
import 'package:survival/screens/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
};

void main() => runApp(new MaterialApp(
      home: SplashScreen(),
      routes: routes,
      title: "Survival Kit",
    ));
