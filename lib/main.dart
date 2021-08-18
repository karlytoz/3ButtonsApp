import 'package:flutter/material.dart';

import './Buttons.dart';
import './TextToDisplay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

class _MyAppState extends State<MyApp> {
  String _textToDisplay = 'none';
  void _changeText(String text) {
    setState(() {
      _textToDisplay = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('3 buttons App'), centerTitle: true),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(50),
        child: Column(
            children: [Buttons(_changeText), TextToDisplay(_textToDisplay)]),
      ),
    ));
  }
}
