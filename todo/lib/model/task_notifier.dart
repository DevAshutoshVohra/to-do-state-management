import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> taskList = [];
  num noOfTaskDone = 0;

  void noTaskDone() {
    num i = 0;
    // ignore: avoid_function_literals_in_foreach_calls
    taskList.forEach((element) {
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
    taskDoneList = taskList.where((element) => element.taskStatus).toList();
    notifyListeners();
  }

  void taskCompleted(num id) {
    // ignore: avoid_function_literals_in_foreach_calls
    taskList.forEach((element) {
      if (element.id == id) element.taskStatus = true;
    });
    noTaskDone();
    addTaskDone();
    notifyListeners();
  }


  void addIntoList( String str){
    num currDate=DateTime.now().microsecond;
    taskList.add(Task(task: str, id: currDate));
    //taskList.add(Task(task: str, id: DateTime.now().microsecond));
    notifyListeners();
  }
  void delTaskDone(num id) {
    for (var element in taskList) {
      if (element.id == id) element.taskStatus = false;
    }
     taskDoneList = taskList.where((element) => element.taskStatus).toList();
    
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
