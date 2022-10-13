import 'package:bloc/bloc.dart';
import 'package:couter_app/blocs/counter_bloc/counter_state.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState()) {
    on<IncrementCounterEvent>(
        (event, emit) => emit(CounterState(counter: state.counter + 1)));

    on<DecrementCounterEvent>(
        (event, emit) => emit(CounterState(counter: state.counter - 1)));
  }
}
