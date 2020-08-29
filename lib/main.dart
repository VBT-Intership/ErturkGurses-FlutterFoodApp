import 'package:flutter/material.dart';
import 'package:vbt_practice/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.short_text, color: Colors.black),
              ),
            ],
          ),
          body: HomePage()),
    );
  }
}
