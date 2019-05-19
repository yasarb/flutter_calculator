import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class CalculatorEvent extends Equatable {
  CalculatorEvent([List props = const []]) : super(props);
}

class KeyPressedEvent extends CalculatorEvent {
  final String key;

  KeyPressedEvent({@required this.key})
      : assert(key != null),
        super([key]);

  @override
  String toString() => 'Key pressed: $key';
}
