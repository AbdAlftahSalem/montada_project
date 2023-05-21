import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:montada_project/task/task2.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle.light.copyWith(
  //     statusBarColor: Colors.red,
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Montada project',
      debugShowCheckedModeBanner: false,
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
        child: const Task2(),
      ),
    );
  }
}
