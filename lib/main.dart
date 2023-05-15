import 'package:flutter/material.dart';
import 'package:montada_project/task_1/login_screen_task_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Montada project',
      debugShowCheckedModeBanner: false,
      home: LoginScreenTask1(),
    );
  }
}
