import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inputWidget = Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.pink,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '123456789012',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 48.0),
          ),
        ],
      ),
    );
    return inputWidget;
  }
}
