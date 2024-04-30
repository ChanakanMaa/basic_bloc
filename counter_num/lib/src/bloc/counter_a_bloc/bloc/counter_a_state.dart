// ระบุว่า BLoC นี้จะมี state อะไรบ้าง
part of 'counter_a_bloc.dart';

// @immutable
// // CounterAState คือ state ใหญ่ ที่มีตัวแปร state อื่นย่อยๆ อะไรบ้าง
// sealed class CounterAState {}

// final class CounterAInitial extends CounterAState {}

class CounterAState extends Equatable {
  // ม่ได้ assign ค่า then pass ค่า
  final int count;
  const CounterAState({required this.count});

  @override
  List<Object> get props => [];
}
