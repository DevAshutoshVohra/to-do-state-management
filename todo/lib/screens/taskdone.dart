import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/card_task_done.dart';

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

              //  working
              ListTile(
            title: CardTaskDone(str: obj.taskDoneList[index].task,id: obj.taskDoneList[index].id,),

            // obj.demoTaskList.where((element) => element.taskStatus);
            //  if (obj.demoTaskList[index].taskStatus) {
            //     // Text(obj.demoTaskList[index].task);
            //    return  ListTile(
            //       title: Text(obj.demoTaskList[index].task),
            //     );
            //   }

            //   }
          ),

          //   child:
        ),
      ), //   obj.demoTaskList.where((element) => element.taskStatus==true)
    );
  }
}
