import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_todo_app/screens/homepage.dart';



void main() => runApp(Splash());

// ignore: use_key_in_widget_constructors
class Splash extends StatefulWidget {


  @override
  State<Splash> createState() => _SplashState();

}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const Homepage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(

          child: Image.asset('assets/images/avatar.jpeg'),


          ),
        );


  }
}