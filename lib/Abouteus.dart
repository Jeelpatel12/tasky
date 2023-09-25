import 'package:flutter/material.dart';
import 'package:simple_todo_app/themes/themeprovide.dart';
import 'package:simple_todo_app/widgets/appdraw.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Text('About Us'),
      ),
      //drawer start
drawer: MyHeaderDrawer(),
      //drawer end
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/avatar.jpeg'), // Replace with your logo image
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Tasky',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "We are provide solutions of prodcastination means because of today's lifestyle pepoles are avoid their "
                  "works or delay thier works so provide reminder to reminde thier task \n this is our Colloage project ",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Contact us at:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: Jeelpatel847@gmail.com\nEmail:RohanRathod23@gmail.com',
              textAlign: TextAlign.center,
            ),
            Text(
              'App developded By Jeel Bhanderi and Rohan Rathod',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
