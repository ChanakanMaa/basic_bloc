// ระบุว่า BLoC นี้จะมี state อะไรบ้าง
part of 'counter_a_bloc.dart';

// @immutable
// // CounterAState คือ state ใหญ่ ที่มีตัวแปร state อื่นย่อยๆ อะไรบ้าง
// sealed class CounterAState {}

// final class CounterAInitial extends CounterAState {}

class CounterAState extends Equatable {
  // ไม่ได้ assign ค่า then pass ค่า
  final int count;
  const CounterAState({required this.count});

  // นิยาม function ที่ใช้ในการ clone จากหน้า counter_a_bloc.dart
  // ค่า sub-state ตัวใหม่ แบบ optional คือส่งเข้ามาหรือไม่ก็ได้
  CounterAState copyWith({int? count}){
    // ถ้าไม่มีค่าส่งเข้ามาก็ return เป็นค่า state เดิมออกไป 
    return CounterAState(count: count ?? this.count);
  }

  @override
  // เชื่อมโยงกับ equatable ว่าจะแทรคการปป. state ตัวแปรตัวไหนบ้าง
  // ตัวแปรไหนที่ต้องอัพเดท UI ให้ใส่ตัวแปร state นั้น
  List<Object> get props => [count];
}
