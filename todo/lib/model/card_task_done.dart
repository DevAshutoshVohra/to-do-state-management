import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_notifier.dart';

// ignore: must_be_immutable
class CardTaskDone extends StatelessWidget {
  CardTaskDone({super.key, required this.str, required this.id});
  final String str;
  final num id;

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
                        str,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    // ignore: prefer_const_constructors
                    child: ElevatedButton(
                        onPressed: () => obj.delTaskDone(id),
                        child: Icon(
                          Icons.delete_forever_rounded,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
