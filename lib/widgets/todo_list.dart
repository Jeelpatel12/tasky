import 'package:flutter/material.dart';
import '../models/db_model.dart';
import '../models/todo_model.dart';
import './todo_card.dart';

class Todolist extends StatelessWidget {
  // create an object of database connect
  // to pass down to todocard, first our todolist have to receive the functions
  final Function insertFunction;
  final Function deleteFunction;
  final db = DatabaseConnect();
  final List<Todo> tasks;
  Todolist(
      {required this.insertFunction, required this.deleteFunction, Key? key, required this.tasks})
      : super(key: key);

  @override

  // Existing code

  @override
  Widget build(BuildContext context) {
  return ListView.builder(
  itemCount: tasks.length,
  itemBuilder: (context, index) {
  String? reminderText = tasks[index].reminderDateTime != null
  ? 'Reminder: ${tasks[index].reminderDateTime!.toString()}'
      : null;

  return ListTile(
  // Existing code
  subtitle: reminderText != null ? Text(reminderText) : null,
  // Rest of the ListTile
  );
  },
  );
  }
  }
