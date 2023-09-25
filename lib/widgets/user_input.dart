import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class UserInput extends StatelessWidget {
  final Function(Todo) insertFunction;
  final TextEditingController _taskController = TextEditingController();
  DateTime? _selectedDateTime; // New variable to store selected reminder date and time

  UserInput({required this.insertFunction});

  Future<void> _selectDateTime(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 10),
    );
    if (picked != null) {
      TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (time != null) {
        _selectedDateTime = DateTime(
          picked.year,
          picked.month,
          picked.day,
          time.hour,
          time.minute,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Existing code
        // ...

        // Button to set reminder
        ElevatedButton(
          onPressed: () {
            _selectDateTime(context);
          },
          child: Text('Set Reminder'),
        ),

        // Button to add task
        ElevatedButton(
          onPressed: () {
            if (_taskController.text.isNotEmpty) {
              Todo todo = Todo(
                title: _taskController.text,
                creationDate: DateTime.now(),
                isChecked: false,
                reminderDateTime: _selectedDateTime, // Assign the selected reminder date and time
              );

              insertFunction(todo);
              Navigator.of(context).pop();
            }
          },
          child: Text('Add Task'),
        ),
      ],
    );
  }
}
