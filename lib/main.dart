import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor:Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber=1;
  void ballReturnNumber(){

    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
                onPressed: (){
                  ballReturnNumber();
                }
            ),
          ),

        ],
      ),
    );
  }
}

