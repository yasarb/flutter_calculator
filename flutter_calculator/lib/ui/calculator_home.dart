import 'package:flutter/material.dart';

import 'package:flutter_calculator/ui/history_widget.dart';
import 'package:flutter_calculator/ui/input_widget.dart';
import 'package:flutter_calculator/ui/keypad_widget.dart';

class CalculatorHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bodyWidget = _buildBody();

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Color.fromRGBO(203, 53, 103, 1.0),
      ),
      body: bodyWidget,
    );
  }

  Widget _buildBody() {
    var historyWidget = HistoryWidget();
    var inputWidget = InputWidget();
    var keypadWidget = KeypadWidget();

    return Column(
      children: <Widget>[
        historyWidget,
        inputWidget,
        keypadWidget,
      ],
    );
  }
}
