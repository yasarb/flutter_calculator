import 'package:equatable/equatable.dart';

abstract class CalculatorState extends Equatable {
  CalculatorState([List props = const []]) : super(props);
}

class CalculatorLoading extends CalculatorState {
  @override
  String toString() => 'CalculatorLoading';
}

class CalculatorWaiting extends CalculatorState {
  final String expr;
  CalculatorWaiting(this.expr);

  @override
  String toString() => 'CalculatorWaiting';
}

class UserTyped extends CalculatorState {
  final String expr;
  UserTyped(this.expr);

  @override
  String toString() => 'UserTyped: $expr';
}
