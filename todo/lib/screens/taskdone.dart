import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_card.dart';
import 'package:todo/model/task_notifier.dart';
class TaskDone extends StatelessWidget {
  const TaskDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, obj, child) => SizedBox(
        height: 700,
        child: ListView.builder(
          itemCount: obj.taskDoneList.length,
          itemBuilder: (context, index) =>
              TaskCard(str: obj.taskDoneList[index].task,index: index,),
        ),
      ),
    );
  }
}
