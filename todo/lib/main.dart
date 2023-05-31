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


/*

sample todos
Complete the report for the weekly team meeting.
Buy groceries for the week.
Schedule a dentist appointment.
Call the insurance company to inquire about coverage.
Finish reading the book "The Great Gatsby."
Organize and declutter the closet.
Pay the monthly bills (electricity, water, internet).
Research and book a vacation destination.
Attend the yoga class at 6 PM.
Start learning a new programming language or framework.

*/