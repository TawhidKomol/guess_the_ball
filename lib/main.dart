import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Guess The Ball'),
          backgroundColor: Colors.grey[900],
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int pageNum = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    pageNum = Random().nextInt(10) + 1;
                  });
                },
                child: Image.asset('images/b$pageNum.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
