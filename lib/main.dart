import 'package:flutter/material.dart';
import 'package:unscriptrookiesfwm/starting_page.dart';
import 'package:unscriptrookiesfwm/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => loginPage(),
        // new is optional used to create a new object of the class
        //but dart is smart enough to do it on its own
      },
    );
  }
}
