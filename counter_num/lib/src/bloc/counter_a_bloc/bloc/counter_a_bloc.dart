// file logic เปลี่ยนแปลงค่าใน state
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_a_event.dart';
part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(CounterAState(count: 0)) {
    // on = listening event อะไร

    // Add Event
    on<CounterAEventAdd>((event, emit) {
      // สามารถอ้างถึงตัวแปร state count ได้เลย ที่อยู่ในไฟล์ counter_a_state.dart
      // state.count = state.count + 1; -> ไม่สามารถทำได้เพราะตามหลักจะไม่ให้เปลี่ยนแปลงค่า state โดยตรง ทำได้แต่ไม่ควร
      // ควร clone state ชุดใหม่ขึ้นมา ไม่ให้ปป.ตัวแปร state เดิมเพื่อป้องกันสภาวะ interfear(?) ex. ค่าใน array กำลัง render grid แต่มีการปป.แทรกเข้ามา ก็อาจเกิด index out of bound
      // ตัวแปรเดิมที่กำลังทำงานอยู่ก็จะไม่ได้รับผลกระทบกับตัวแปรใหม่ที่มีการปป.

      // โดยจะทำผ่านตัว emit จะเป็น argument ที่วิ่งเข้ามา
      // ตัวคอยส่ง signal ให้ระบบรู้ว่าตัวแปร state ตัวใหม่
      // emit(CounterAState(count: state.count + 1)); -> เขียนแบบนี้ได้แต่ code จะดูรกถ้ามีตัวแปร state หลายตัว
      emit(state.copyWith(count: state.count + 1));
    });

    // Reset Event
    on<CounterAEventReset>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}
