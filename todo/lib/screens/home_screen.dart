import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/months.dart';
import 'package:todo/model/task_card.dart';

import 'package:todo/model/task_notifier.dart';
import 'package:todo/screens/taskdone.dart';

class HomeScreen extends StatelessWidget {
   TextEditingController controller=TextEditingController();

  HomeScreen({super.key});
  String taskstr = '';

  
 
  @override 
  
  Widget build(BuildContext context) {
    void submit() {
      Navigator.of(context).pop(controller.text);
       controller.clear();
    }

    Future<String?> openDialog() => showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(' Enter a Task '),
            content: TextField(
              autofocus: true,
              controller: controller,
              decoration: const InputDecoration(hintText: 'Enter a Task'),
            ),
            actions: [
              TextButton(
                onPressed: submit,
                child: const Text(' Submit '),
              ),
            ],
          ),
        );

    return Consumer<TaskNotifier>(
      
      builder: (context, obj, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          
          backgroundColor: const Color.fromRGBO(250, 251, 255, 1),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: ' All Task  ${obj.taskList.length}',
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
                   Text(Months.months[DateTime.now().month-1]),
                ]),
              )
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 700,
                    child: ListView.builder(
                      itemCount: obj.taskList.length,
                      itemBuilder: (context, index) => TaskCard(
                        str: obj.taskList[index].task,
                        id: obj.taskList[index].id,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor:const  Color.fromRGBO(77, 91, 190, 2),
                    onPressed: () async {
                      final  str = await openDialog();
          
                      if (str == null || str.isEmpty) return;
          
                        taskstr = str;
          
                      obj.addIntoList(taskstr);
                  
          
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(Icons.add),
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
