import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  Dash({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<Dash> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      //appBar: AppBar(
       // title: Text('Pet care'),
        //backgroundColor: Colors.teal,
      //),
      body: Container(
        //padding: const EdgeInsets.all(20.0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pets.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(

        ),
      ),
    );
  }
}