import 'package:flutter/material.dart';
import 'package:module_8/profile.dart';
import 'package:module_8/setting.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                return Setting();
              },
              ),
              );
            },
                child: Text('Go to Setting')),
            ElevatedButton(
                onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(userName: 'Siyam',)
                  ,),
              ).then((value){
                print(value);
              });
            },
                child: Text('Go to Profile')),
          ],
        ),
      ),
    );
  }
}