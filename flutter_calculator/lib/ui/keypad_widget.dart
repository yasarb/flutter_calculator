import 'package:flutter/material.dart';

class KeypadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              _makeButton('C', color: Colors.red),
              _makeButton('+-'),
              _makeButton('%'),
              _makeButton('/'),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('7'),
              _makeButton('8'),
              _makeButton('9'),
              _makeButton('x'),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('4'),
              _makeButton('5'),
              _makeButton('6'),
              _makeButton('-'),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('1'),
              _makeButton('2'),
              _makeButton('3'),
              _makeButton('+'),
            ],
          ),
          Row(
            children: <Widget>[
              _makeButton('0', flex: 2),
              _makeButton('.', flex: 1),
              _makeButton('=', flex: 1, equalsBtn: true),
            ],
          )
        ],
      ),
      flex: 12,
    );
  }

  _makeButton(String val, {color: Colors.black87, equalsBtn: false, flex: 1}) {
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
          onPressed: () => {print('x')},
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
