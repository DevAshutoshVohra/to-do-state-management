import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> taskList = [];

  List<Task> taskDoneList = [];

  void add(String s, int id) {
    taskList.add(
      Task(task: s, id: id),
    );
  }

  void addTaskDone(Task t) {
    taskList.add(t);

    notifyListeners();
  }

  List<Task> demoTaskList = [
    Task(task: '  Buy Food  ', id: 1),
    Task(task: '  Pay Utilities ', id: 2),
    Task(task: '  Clean Kitchen ', id: 3),
    Task(task: '  Wash dishes ', id: 4),
    Task(task: ' Do HomeWork ', id: 5),
    Task(task: 'Exercise', id: 6),
    Task(task: 'Respond to emails', id: 7),
    Task(task: 'Read a book:', id: 8),
    Task(task: 'Learn a new skill', id: 9),
    Task(task: 'Prepare for a presentation', id: 10),
    Task(task: 'Plan a vacation:', id: 11)
  ];
}
