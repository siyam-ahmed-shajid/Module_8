import 'package:flutter/material.dart';
import 'package:module_8/home.dart';

class Setting extends StatelessWidget{
  const Setting ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Back to previous')),
            ElevatedButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Home()), (route) => false);
            }, child: Text('Go to Home')),
          ],
        ),
      ),
    );
  }
}