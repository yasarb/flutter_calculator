import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_calculator/bloc/bloc.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var calcBloc = BlocProvider.of<CalculatorBloc>(context);

    var inputWidget = BlocBuilder(
      bloc: calcBloc,
      builder: (context, CalculatorState state) {
        return Container(
          padding: EdgeInsets.all(5.0),
          color: Colors.pink,
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildText(state),
            ],
          ),
        );
      },
    );
    return inputWidget;
  }

  Text _buildText(CalculatorState state) {
    var value = '';

    if (state is UserTyped) {
      value = state.expr;
    } else if (state is CalculatorWaiting) {
      value = state.expr;
    }

    return Text(
      value,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 48.0),
    );
  }
}
