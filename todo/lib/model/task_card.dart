import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_notifier.dart';

// ignore: must_be_immutable
class TaskCard extends StatelessWidget {
  TaskCard({super.key, required this.str, required this.id});
  final String str;
  final int id;

  bool myvalue = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, obj, child) => Container(
        // margin: EdgeInsets.all(10),
        padding:const EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      subtitle: Text('  ${DateTime.now().day.toString()}'),
                      title: Text(
                        str,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                            fontSize: 20),
                      ),
                    ),
                  ),

                  // RadioMenuButton(
                  //     value: false,
                  //     groupValue: null,
                  //     onChanged:(value) {
                  //       value=true;

                  //     },
                  //     child: child),

                  Checkbox(
                    value: myvalue,
                    onChanged: (bool? value) {
                      myvalue = true;
                      obj.taskCompleted(id);
                      
                      // obj.demoTaskList.forEach((element) {
                      //   if (element.id == id) element.taskStatus = true;
                     
                      // });
                    },
                    shape: const CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
