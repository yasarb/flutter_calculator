import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var historyWidget = Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.pink.withOpacity(0.85),
      height: 105,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '10 + 10',
            style: TextStyle(
                color: Colors.black87.withOpacity(0.75),
                fontWeight: FontWeight.w500,
                fontSize: 32.0),
          )
        ],
      ),
    );
    return historyWidget;
  }
}
