import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: Askmeanything(),
      ),
    ),
  );
}

class Askmeanything extends StatefulWidget {
  const Askmeanything({Key key}) : super(key: key);

  @override
  _AskmeanythingState createState() => _AskmeanythingState();
}

class _AskmeanythingState extends State<Askmeanything> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballnumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}
