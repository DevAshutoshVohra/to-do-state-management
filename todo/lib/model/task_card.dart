import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_notifier.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.str});
  final String str;
  @override
  Widget build(BuildContext context) {
    return    Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        subtitle: Text(
                          DateTime.now().day.toString(),
                        ),
                        title: const Text(
                          'do work',
                          style: TextStyle(
                              fontFamily: 'Open Sans', fontSize: 20),
                        ),
                      ),
                    ),
                    const Checkbox(
                      value: true,
                      onChanged: null,
                      shape: CircleBorder(),
                    ),
                  ],
                )
              ],
            ),
          );
                  
  }
}
