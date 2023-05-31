import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> taskList = [];
  int noOfTaskDone = 0;

  void noTaskDone() {
    int i = 0;
    // ignore: avoid_function_literals_in_foreach_calls
    demoTaskList.forEach((element) {
      if (element.taskStatus) i++;
    });

    noOfTaskDone = i;
  }

  List<Task> taskDoneList = [];

  // void add(String s, int id) {
  //   taskList.add(
  //     Task(task: s, id: id),
  //   );
  //   notifyListeners();
  // }

  void addTaskDone() {
    taskDoneList = demoTaskList.where((element) => element.taskStatus).toList();
    notifyListeners();
  }

  void taskCompleted(int id) {
    // ignore: avoid_function_literals_in_foreach_calls
    demoTaskList.forEach((element) {
      if (element.id == id) element.taskStatus = true;
    });
    noTaskDone();
    addTaskDone();
    notifyListeners();
  }

  void delTaskDone(int id) {
    for (var element in demoTaskList) {
      if (element.id == id) element.taskStatus = false;
    }
     taskDoneList = demoTaskList.where((element) => element.taskStatus).toList();
    
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
    Task(
      task: 'Learn a new skill',
      id: 9,
    ),
    Task(task: 'Prepare for a presentation', id: 10),
    Task(
      task: 'Plan a vacation:',
      id: 11,
    )
  ];
}
