import 'package:flutter/material.dart'; 

class TextToDisplay extends StatelessWidget {
  TextToDisplay(this._description);
  String _description;

  @override
  Widget build(BuildContext context) {
    return Text(
      _description
    );
  }
}