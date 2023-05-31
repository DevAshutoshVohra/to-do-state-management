import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_notifier.dart';

// ignore: must_be_immutable
class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.str, required this.id});
  final String str;
  final num id;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool myvalue = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, obj, child) => Container(
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      subtitle: Text('  ${DateTime.now().day.toString()}'),
                      title: Text(
                        widget.str,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                            fontSize: 20),
                      ),
                    ),
                  ),

                  

                  Checkbox(
                    value: myvalue,
                    onChanged: (bool? value) {
                      setState(() {
                        myvalue = value!;

                         if (myvalue) {
                        obj.taskCompleted(widget.id);
                      } else {
                        obj.delTaskDone(widget.id);
                      }
                      });
                     

                    
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
