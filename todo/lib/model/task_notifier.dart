import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> taskList = [];

  void add(String s, int id) {
    taskList.add(
      Task(task: s, id: id),
    );
  }


    List<Task> demoTaskList = [
    Task(task: '  Buy Food  ',id: 1),
    Task(task: '  Pay Utilities ',id: 2),
    Task(task: '  Clean Kitchen ',id: 3),
    Task(task: '  Wash dishes ',id: 4)
  ];
  
}
