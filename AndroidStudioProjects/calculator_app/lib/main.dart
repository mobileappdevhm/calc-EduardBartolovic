
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData( primarySwatch: Colors.blueGrey),
      home: new HomePage(),
    );
  }
}
