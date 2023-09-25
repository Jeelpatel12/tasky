import 'package:flutter/material.dart';

import '../Abouteus.dart';
import '../screens/homepage.dart';
import '../themes.dart';




class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return drawer();
  }
  Drawer drawer(){
    return  Drawer( child: ListView(
      children: [
        ListTile(
            title: const Text('dashboard'),
            onTap: () =>
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) => Homepage()
                  ),
                )
        ),
        ListTile(
          title: const Text('Theme'),
         onTap: () =>
             Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) => SettingsPage()
                  )
              ),
        ),

        ListTile(
            title: const Text('Aboute'),
            onTap: () =>
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) => AboutUs()
                  ),
                )
        ),

      ],
    ),


    );

  }
}
