import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:simple_todo_app/widgets/appdraw.dart';
import '../main.dart';
import '../models/db_model.dart';
import '../models/todo_model.dart';
import '../themes/themeprovide.dart';
import '../widgets/user_input.dart';
import '../widgets/todo_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var db = DatabaseConnect();

 Future<void> addItem(Todo todo) async {
  await db.insertTodo(todo);
  setState(() {
    // Schedule a notification if a reminder is set
    if (todo.reminderDateTime != null) {
      scheduleNotification(todo);
    }
  });
}
Future<void> scheduleNotification(Todo todo) async {
  final now = DateTime.now();
  if (todo.reminderDateTime!.isAfter(now)) {
    final AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your channel id',
      'your channel name',
    );
    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

   await flutterLocalNotificationsPlugin.schedule(
  todo.id ?? 0, // Use the todo id as notification id
  'Reminder for task: ${todo.title}', // Set the notification title using the task title
  'It is time for your task reminder.',
  todo.reminderDateTime!,
  platformChannelSpecifics,
  payload: todo.title, // You can provide additional data if needed
);

  }
}

 Future<void> deleteItem(Todo todo) async {
  await db.deleteTodo(todo);
  setState(() {
    // Cancel the scheduled notification for this todo
    flutterLocalNotificationsPlugin.cancel(todo.id ?? 0);
  });
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.currentTheme,
      color: ThemeManager.currentTheme.backgroundColor,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tasky'),
        ),
        drawer: MyHeaderDrawer(),
        body: Column(
          children: [
            Todolist(insertFunction: addItem, deleteFunction: deleteItem, tasks: [],),
            UserInput(insertFunction: addItem),
          ],
        ),
      ),
    );
  }
}
