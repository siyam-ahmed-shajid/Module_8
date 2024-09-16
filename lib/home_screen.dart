// part of 3rd class

import 'package:flutter/material.dart';
import 'package:module_8/home_screen.dart';

//Widget
class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>  _HomeScreenState();
  }


//State Class for HomeScreen
class _HomeScreenState extends State <HomeScreen> {

  int counter = 0;

  @override
  void initState(){
    super.initState();
    print('init state');
  }

  @override
  void didChangeDependencies(){
    print('didChangeDependency');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget){
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Text(counter.toString(),style: const TextStyle(
          fontSize: 50,
        ),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter++;
                print(counter);
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),

            const SizedBox(width: 8),

            FloatingActionButton(
              onPressed: () {
                counter--;
                print(counter);
                setState(() {});
              },
              child: const Icon(Icons.remove),
            )
          ],
      ),
    );
  }

  @override
  void deactivate() {
    print('deactive');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

}

