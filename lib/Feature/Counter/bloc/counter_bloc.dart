import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<InitialCounterEvent>(initialCounterEvent);
    on<IncreamentCounterEvent>(increamentCounterEvent);
    on<DecreamentCounterEvent>(decreamentCounterEvent);
  }

  FutureOr<void> initialCounterEvent(
      InitialCounterEvent event, Emitter<CounterState> emit) {
    emit(CounterInitial());
    print(CounterInitial());
  }

  FutureOr<void> increamentCounterEvent(
      IncreamentCounterEvent event, Emitter<CounterState> emit) {
    //counter=counter+1;
    emit(CounterState(counter:counter=counter+1));
    if (kDebugMode) {
      print(counter);
    }
  }

  FutureOr<void> decreamentCounterEvent(
      DecreamentCounterEvent event, Emitter<CounterState> emit) {
    //counter=counter-1;
    emit(CounterState(counter:counter= counter - 1));
    print(counter);
  }
}
