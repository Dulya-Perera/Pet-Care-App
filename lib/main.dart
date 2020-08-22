import 'package:flutter/material.dart';
import 'package:signup_login/login_signup.dart';

import 'check.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(20.0),
        constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/dogs.jpg"),
            fit: BoxFit.cover,
            )
          ),

        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[

              SizedBox(
                height: 70.0,
              ),

              Text('PET CARE+\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 47.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.redAccent
                ),

              ),

              Text('Spent a little time to care your pet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  //color: Colors.deepPurple
                ),
              ),

              SizedBox(
                height: 300.0,
              ),

              MaterialButton(
                child: Text("STRAT",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                color: Colors.cyan,
                //textColor: Colors.white,
                minWidth: 260.0,
                padding: EdgeInsets.only(left: 38, right: 38, top: 15, bottom: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),

            ],
          ),
        ),
        ),
    );
  }
}
