import 'package:flutter/material.dart';
import 'package:survival/feedback/feedback_page.dart';
import 'package:survival/screens/emergency.dart';
import 'package:survival/screens/tips.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survival Kit"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              text: "Tips",
            ),
            new Tab(
              text: "Emergency",
            ),
            new Tab(
              text: "Feedback",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Tips(),
          new Emergency(),
          new FeedbackPage(),
        ],
      ),
    );
  }
}
