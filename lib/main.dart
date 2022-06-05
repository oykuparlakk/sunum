import 'package:flutter/material.dart';
import 'package:sunum/locator.dart';
import 'package:sunum/view/counter_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CounterView(),
    );
  }
}
