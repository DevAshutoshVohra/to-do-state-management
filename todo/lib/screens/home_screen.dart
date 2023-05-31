import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_card.dart';

import 'package:todo/model/task_notifier.dart';
import 'package:todo/screens/taskdone.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, obj, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          backgroundColor: const Color.fromRGBO(250, 251, 255, 1),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: ' All Task  ${obj.demoTaskList.length}',
                  // child: Text('data'),
                ),
                Tab(
                  text: '  Task Done   ${obj.taskDoneList.length}',
                ),
                //Tab(icon: Icon(Icons.abc),),
              ],
            ),
            backgroundColor: const Color.fromRGBO(77, 91, 190, 2),
            title: const Text(
              'To-do list',
              textAlign: TextAlign.left,
            ),
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
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ListView.separated(itemBuilder:(context, index) {
                  //   return
                  //   ListTile(title: Text(obj.demoTaskList[index].task),);
                  // }, separatorBuilder:(context, index) => const Divider(), itemCount: obj.demoTaskList.length),

                  SizedBox(
                    height: 700,
                    child: ListView.builder(
                      itemCount: obj.demoTaskList.length,
                      itemBuilder: (context, index) => TaskCard(
                        str: obj.demoTaskList[index].task,
                        id: obj.demoTaskList[index].id,
                      ),
                    ),
                  ),

                  // Container(
                  //   height: 700,
                  //   child: ListView.builder(
                  //     itemCount: obj.demoTaskList.length,
                  //     itemBuilder: (context, index) =>
                  //         TaskCard(str: obj.demoTaskList[index].task),
                  //   ),
                  // ),

                  const FloatingActionButton(
                    backgroundColor: Color.fromRGBO(77, 91, 190, 2),
                    onPressed: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              const TaskDone(),
            ],
          ),
        ),
      ),
    );
  }
}
