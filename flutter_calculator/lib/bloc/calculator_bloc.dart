import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_calculator/repository/repository.dart';
import 'package:flutter_calculator/bloc/calculator_state.dart';
import 'package:flutter_calculator/bloc/calculator_event.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final ExpressionRepository expressionRepository;

  CalculatorBloc({@required this.expressionRepository});

  @override
  CalculatorState get initialState => CalculatorLoading();

  @override
  void onTransition(Transition<CalculatorEvent, CalculatorState> transition) {
    print(transition);
  }

  @override
  Stream<CalculatorState> mapEventToState(CalculatorEvent event) async* {
    if (event is KeyPressedEvent) {
      if (event.key == 'C') {
        expressionRepository.clear();
        yield* _mapClearToState(currentState, event);
      } else if (event.key == '=') {
        print('calculating....');
      } else if (event.key == '±') {
        print('asd');
      } else {
        yield* _mapAddCharacterToState(currentState, event);
      }
    }
  }

  Stream<CalculatorState> _mapAddCharacterToState(
    CalculatorState currentState,
    KeyPressedEvent event,
  ) async* {
    final expr = expressionRepository.addCharacter(event.key);
    yield UserTyped(expr);
    yield CalculatorWaiting(expr);
  }

  Stream<CalculatorState> _mapClearToState(
    CalculatorState currentState,
    KeyPressedEvent event,
  ) async* {
    final expr = expressionRepository.clear();
    yield UserTyped(expr);
    yield CalculatorWaiting(expr);
  }
}
