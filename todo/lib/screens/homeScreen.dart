import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:todo/model/task_notifier.dart';
import 'package:todo/screens/taskdone.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, obj, child) => Scaffold(
        backgroundColor:const Color.fromRGBO(250, 251, 255, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(77, 91, 190, 2),
          title: const Text('To-do list'),
          actions: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              height: 20,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(103, 116, 202, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Text(
                  DateTime.now().day.toString(),
                ),
                const Text('May'),
              ]),
            )
          ],
        ),
        body: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextButton(
                  onPressed: null,
                  child: Text(' All Task '),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TaskDone())),
                  child: const Text('  Task Done '),
                )
              ],
            ),

            // ListView.separated(itemBuilder:(context, index) {
            //   return
            //   ListTile(title: Text(obj.demoTaskList[index].task),);
            // }, separatorBuilder:(context, index) => const Divider(), itemCount: obj.demoTaskList.length),
            

            Container(
              height: 200,
              child: ListView.builder(
                
                itemCount:obj.demoTaskList.length,
                itemBuilder: (context, index) =>
                    Text(obj.demoTaskList[index].task,style:const TextStyle(fontFamily: 'os'),),
              ),
            ),






            const FloatingActionButton(
              onPressed: null,
              shape: RoundedRectangleBorder(),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
