import 'package:flutter/material.dart';

import 'package:flutter_calculator/ui/calculator_home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Nunito',
      ),
      home: CalculatorHome(),
    );
  }
}
