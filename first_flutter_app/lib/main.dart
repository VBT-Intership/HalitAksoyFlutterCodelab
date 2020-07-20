import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          //child: Text('Hello World'),   // Replace this text...
          child: Column(
            children: <Widget>[
              Text(wordPair.asString),
              Text(wordPair.asCamelCase),
              Text(wordPair.asLowerCase),
            ],
          ),  // With this text.
        ),
      ),
    );
  }
}