import 'package:flutter/material.dart';

class TaskDone extends StatelessWidget {
  const TaskDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
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
                          fontFamily: 'Open Sans',
                          fontSize: 20
                        ),
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
          ))
        ],
      ),
    );
  }
}
