import 'package:flutter/material.dart';
import 'package:simple_todo_app/screens/homepage.dart';
import 'package:simple_todo_app/themes/themeprovide.dart';
import 'package:simple_todo_app/widgets/appdraw.dart';
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Text('Settings'),
      ),
      drawer:MyHeaderDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Theme Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
                title: Text("Teal"),
                onTap: () {
                  ThemeManager.applyTheme('Teal');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage()) );// Close the theme selection page
                }

            ),

            ListTile(
                title: Text("blue"),
                onTap: () {
                  ThemeManager.applyTheme('Blue');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage()) );// Close the theme selection page
                }

            ),
            ListTile(
                title: Text("white"),
                onTap: () {
                  ThemeManager.applyTheme('White');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage()) );// Close the theme selection page
                }

            ),
            ListTile(
                title: Text("dark"),
                onTap: () {
                  ThemeManager.applyTheme('Dark');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Homepage()) );// Close the theme selection page
                }

            )
          ],
        ),
      ),
    );
  }




}
