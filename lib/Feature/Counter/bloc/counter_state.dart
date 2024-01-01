part of 'counter_bloc.dart';

@immutable
 class CounterState {
  int counter ;
  CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counter: 0);
}

// class CounterIncreamentEvent extends CounterState{}
// class CounterDncreamentEvent extends CounterState{}
// class UpdateCounterActionState extends CounterState{
//
//   @override
//     late int count;
//
//   UpdateCounterActionState():super(counter:  );
//  }
