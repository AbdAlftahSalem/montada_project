import 'package:flutter/material.dart';
import 'package:montada_project/task/task_model.dart';

import 'const_list.dart';

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: const EdgeInsets.only(top: 32 , left: 16 , right: 16 , bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Text(
                        "18",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Friday",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "July 2019",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/08/01/01/33/beanie-2562646_1280.jpg"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          boxWidget(
              tasks: ConstList.morningList,
              title: "In the morning",
              boxColor: Colors.teal),
          boxWidget(
              tasks: ConstList.afterWork,
              title: "After work",
              boxColor: Colors.white,
              borderColor: Colors.grey,
              colorTitle: Colors.black),
          boxWidget(
              tasks: ConstList.goingToBed,
              title: "Going the bed",
              boxColor: Colors.purple),
        ],
      ),
    );
  }

  Widget boxWidget(
      {required List<TaskModel> tasks,
      required String title,
      required Color boxColor,
      Color colorTitle = Colors.white,
      Color borderColor = Colors.white}) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(46),
          topLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: colorTitle,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              Text(
                "10 may 2019",
                style: TextStyle(
                  color: title == "After work" ? Colors.grey : Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Column(
            children: tasks
                .map((e) => Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: e.completed ? Colors.white : null,
                            border: Border.all(color: borderColor),
                            shape: BoxShape.circle,
                          ),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.done,
                            color: title == "After work"
                                ? e.borderColor
                                : boxColor,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          e.title,
                          style: TextStyle(
                            color: e.completed
                                ? e.finishTextColor
                                : e.unFinishTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            decoration:
                                e.completed ? TextDecoration.lineThrough : null,
                          ),
                        ),
                      ],
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
