// file logic เปลี่ยนแปลงค่าใน state
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_a_event.dart';
part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(CounterAState(count: 0)) {
    on<CounterAEvent>((event, emit) {
      //
    });
  }
}
