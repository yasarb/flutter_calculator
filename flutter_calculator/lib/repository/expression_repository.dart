import 'package:equatable/equatable.dart';

class ExpressionRepository extends Equatable {
  String _expression = '';

  ExpressionRepository([List props = const []]) : super(props);

  String addCharacter(String key) {
    _expression += key;
    print('added: $_expression');
    return _expression;
  }

  String clear() {
    _expression = '';
    print('Cleared');
    return _expression;
  }
}
