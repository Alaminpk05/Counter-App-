part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
 class InitialCounterEvent extends CounterEvent{}
class IncreamentCounterEvent extends CounterEvent{}
class DecreamentCounterEvent extends CounterEvent{}
