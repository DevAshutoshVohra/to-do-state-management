import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/model/task_notifier.dart';
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TaskNotifier())
        ],
        child:  HomeScreen(),
      ),
    );
  }
}
