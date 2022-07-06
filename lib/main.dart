import 'package:app_todo/todo_page.dart';
import 'package:flutter/material.dart';

import 'form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const TodoPage());
          case '/form':
            return MaterialPageRoute(builder: (context) => FormPage());
        }
        return null;
      },
    );
  }
}
