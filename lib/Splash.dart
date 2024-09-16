//part of third class

import 'package:flutter/material.dart';
import 'package:module_8/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});


  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
           },
                child: const Text('Go to Home'),
        ),
      ),
    );
  }
}


