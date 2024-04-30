// สร้าง higher component/widget มาหุ้มตัว MaterialApp เพื่อจะ BLoC statement ให้ component ทุกตัวที่อยู่ใต้ root สามารถเข้าถึงได้

// import 'dart:js';

import 'package:counter_num/src/bloc/counter_a_bloc/bloc/counter_a_bloc.dart';
import 'package:counter_num/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterABloc =
        BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    // return BlocProvider( -> สำหรับมี BLoC แค่ตัวเดียว
    return MultiBlocProvider(
      providers: [counterABloc],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
