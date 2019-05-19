import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_calculator/bloc/bloc.dart';

class KeypadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var calcBloc = BlocProvider.of<CalculatorBloc>(context);

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              _makeButton('C', calcBloc, color: Colors.red),
              _makeButton('±', calcBloc),
              _makeButton('%', calcBloc),
              _makeButton('/', calcBloc),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('7', calcBloc),
              _makeButton('8', calcBloc),
              _makeButton('9', calcBloc),
              _makeButton('x', calcBloc),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('4', calcBloc),
              _makeButton('5', calcBloc),
              _makeButton('6', calcBloc),
              _makeButton('-', calcBloc),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('1', calcBloc),
              _makeButton('2', calcBloc),
              _makeButton('3', calcBloc),
              _makeButton('+', calcBloc),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('0', calcBloc, flex: 2),
              _makeButton('.', calcBloc, flex: 1),
              _makeButton('=', calcBloc, flex: 1, equalsBtn: true),
            ],
          )
        ],
      ),
      flex: 12,
    );
  }

  _makeButton(String val, CalculatorBloc calcBloc,
      {color: Colors.black87, equalsBtn: false, flex: 1}) {
    return Expanded(
      child: Container(
        decoration: _getGradient(equalsBtn),
        child: OutlineButton(
          padding: EdgeInsets.all(20),
          borderSide: BorderSide(color: Color.fromRGBO(112, 112, 112, 1.0), width: 2),
          child: Text(
            val,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: color),
          ),
          shape: Border.all(color: Colors.black26, width: 2.0, style: BorderStyle.solid),
          onPressed: () => {calcBloc.dispatch(KeyPressedEvent(key: val))},
        ),
      ),
      flex: flex,
    );
  }

  _getGradient(equalsBtn) {
    if (equalsBtn) {
      return BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          Color.fromRGBO(216, 45, 78, 1.0),
          Color.fromRGBO(189, 63, 50, 1.0),
        ]),
      );
    } else {
      return null;
    }
  }
}
