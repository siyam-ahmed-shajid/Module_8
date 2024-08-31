import 'package:flutter/material.dart';
import 'package:module_8/first_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          brightness: Brightness.light,
          elevatedButtonTheme: ElevatedButtonThemeData(
            /*style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              ),*/
            style: ButtonStyles.elevatedButton,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyles.textButton,
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
              centerTitle: true,
              elevation: 4,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                //style: ButtonStyles.ElevatedStyle,
                  onPressed: () {},
                  child: Text('Tap to edit')),
              ElevatedButton(
                //style: ButtonStyles.ElevatedStyle,
                  onPressed: () {},
                  child: Text('Tap to edit')),
              ElevatedButton(
                //style: ButtonStyles.ElevatedStyle,
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text('Tap to edit')),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    //backgroundColor: Colors.pink,
                  ),
                  onPressed: () {},
                  child: Text('Tap to edit')),
              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ));
  }
}

class ButtonStyles {
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ));

  static ButtonStyle textButton = TextButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 24,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16));
}
