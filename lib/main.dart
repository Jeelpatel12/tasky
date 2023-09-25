import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_todo_app/themes/themeprovide.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'SplashScreen.dart';
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeManager.loadTheme(); // Load the selected theme from SharedPreferences
  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
  final InitializationSettings initializationSettings =
  InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeManager.currentTheme,

      debugShowCheckedModeBanner: false,
      title: 'tasky',
      home: Splash(),
    );
  }
}
