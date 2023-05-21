import 'package:flutter/material.dart';
import 'package:montada_project/task/task_model.dart';

class ConstList {
  static List<TaskModel> morningList = [
    TaskModel(
      title: "Take a medicine",
      completed: false,
      colorIcon: Colors.white,
      unFinishTextColor: Colors.white,
      finishTextColor: Colors.grey.shade200,
    ),
    TaskModel(
      title: "Wash clothes",
      completed: true,
      colorIcon: Colors.white,
      unFinishTextColor: Colors.white,
      finishTextColor: Colors.grey.shade200,
    ),
  ];

  static List<TaskModel> afterWork = [
    TaskModel(
      title: "Go to the bank",
      completed: false,
      colorIcon: Colors.orange,
      unFinishTextColor: Colors.black,
      finishTextColor: Colors.grey,
      borderColor: Colors.grey,
    ),
    TaskModel(
      title: "Regular in the wave release a work",
      completed: true,
      colorIcon: Colors.orange,
      unFinishTextColor: Colors.black,
      finishTextColor: Colors.grey,
      borderColor: Colors.grey,
    ),
    TaskModel(
      title: "See movie",
      completed: true,
      colorIcon: Colors.orange,
      unFinishTextColor: Colors.black,
      finishTextColor: Colors.grey,
      borderColor: Colors.grey,
    ),
  ];

  static List<TaskModel> goingToBed = [
    TaskModel(
      title: "Call mom",
      completed: false,
      colorIcon: Colors.white,
      unFinishTextColor: Colors.white,
      finishTextColor: Colors.grey.shade200,
    ),
    TaskModel(
      title: "Read a design journal",
      completed: true,
      colorIcon: Colors.white,
      unFinishTextColor: Colors.white,
      finishTextColor: Colors.grey.shade200,
    ),
  ];
}
