// ใช้นิยาม action เรียกว่า events
part of 'counter_a_bloc.dart';

@immutable
abstract class CounterAEvent extends Equatable {
  const CounterAEvent();

  @override
  List<Object?> get props => [];
}

class CounterAEventAdd extends CounterAEvent {
  // เอาไปไว้ abstract class เพื่อไม่ให้คลาสลูกรก??
  // @override
  // // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();
}

class CounterAEventReset extends CounterAEvent {}
