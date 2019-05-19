import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_calculator/bloc/bloc.dart';
import 'package:flutter_calculator/repository/repository.dart';
import 'package:flutter_calculator/ui/calculator_home.dart';

class App extends StatelessWidget {
  final calculatorBloc = CalculatorBloc(expressionRepository: ExpressionRepository());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: calculatorBloc,
        child: MaterialApp(
          title: 'Calculator',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            fontFamily: 'Nunito',
          ),
          home: CalculatorHome(),
        ));
  }
}
