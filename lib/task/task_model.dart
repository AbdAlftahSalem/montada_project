import 'package:flutter/material.dart';

class TaskModel {
  String title;
  bool completed;
  Color colorIcon, finishTextColor, unFinishTextColor , borderColor;

  TaskModel({
    required this.title,
    required this.completed,
    required this.colorIcon,
    required this.finishTextColor,
    required this.unFinishTextColor,
    this.borderColor = Colors.white,
  });
}
