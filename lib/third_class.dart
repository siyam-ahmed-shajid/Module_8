import 'package:flutter/material.dart';
import 'package:module_8/Splash.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}

/*class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: Icon(Icons.home),
          actions: [
            Icon(Icons.add)
          ],
        ),
        body: Center(
          child: Text(counter.toString(),style: TextStyle(
            fontSize: 50,
          ),),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}*/





//widget - 2 types
// Stateless widget
//stateful widget
// State
