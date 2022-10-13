 class CounterState {
  int counter;
  CounterState({required this.counter});
}

class InitialCounterState extends CounterState {
  InitialCounterState():super(counter: 0);
}

