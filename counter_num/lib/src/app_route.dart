import 'package:counter_num/src/pages/another_page.dart';
import 'package:counter_num/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const home = 'home';
  static const another = 'another';
  final _route = <String, WidgetBuilder> {
    home: (context) => MyHomePage(title: 'HomePage'),
    another: (context) => AnotherPage(title: 'AnotherPage')
  };

  get getAll => _route;
}