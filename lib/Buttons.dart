import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function changeText;
  Buttons(this.changeText);
  @override
  Widget build(BuildContext context) {
    return Container(
        // width:double.infinity,
        child: Column(
      children: <Widget>[
        ElevatedButton(
            // color: Colors.blue,
            // textColor: Colors.white,
            style: ElevatedButton.styleFrom(
                primary: Colors.orange, onPrimary: Colors.white),
            child: Text('ElevatedButton'),
            onPressed: () => changeText('Elevated Button pressed')),
        TextButton(
            onPressed: () => changeText('Text Button pressed'),
            child: Text('TextButton')),
        OutlinedButton(
            onPressed: () => changeText('Outlined Button pressed'),
            child: Text('OutlinedButton'))
      ],
    ));
  }
}
