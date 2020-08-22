import 'package:flutter/material.dart';
import 'package:signup_login/check.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Login variables
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController emailController;
  TextEditingController pwdController;
  TextEditingController confirmPwdInputController;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    emailController = new TextEditingController();
    pwdController = new TextEditingController();
    confirmPwdInputController = new TextEditingController();
    super.initState();
  }

  //final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30.0, left: 100.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/catanddoglogo.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                      height: 200.0,
                      width: 200.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 200.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 390.0,

                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  constraints: BoxConstraints.expand(height: 50),
                                  child: TabBar(tabs: [
                                    Tab(child: Text(
                                        'Sign In',
                                        style: TextStyle(color: Colors.black))),
                                    Tab(child: Text(
                                        'Sign Up',
                                        style: TextStyle(color: Colors.black))),
                                  ]),
                                ),
                                Expanded(
                                  child: Container(
                                    child: TabBarView(children: [
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: const EdgeInsets.all(30.0),
                                              child: SingleChildScrollView(
                                                  child: Form(
                                                    key: _loginFormKey,
                                                    child: Column(
                                                      children: <Widget>[
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Owner Email*',
                                                              hintText: "john.doe@gmail.com"),
                                                          controller: emailInputController,
                                                          keyboardType: TextInputType.emailAddress,
                                                          validator: emailValidator,
                                                        ),
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Password*',
                                                              hintText: "********"),
                                                          controller: pwdInputController,
                                                          obscureText: true,
                                                          validator: pwdValidator,
                                                        ),

                                                        SizedBox(
                                                          height: 50.0,
                                                        ),
                                                        RaisedButton(
                                                          child: Text("Login"),
                                                          color: Theme.of(context).primaryColor,
                                                          textColor: Colors.white,
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => Dash()),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  )))
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: const EdgeInsets.all(1.5),
                                              child: SingleChildScrollView(
                                                  child: Form(
                                                    key: _loginFormKey,
                                                    child: Column(
                                                      children: <Widget>[
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Pet Name*', hintText: "Jim"),
                                                          controller: firstNameInputController,
                                                          validator: (value) {
                                                            if (value.length < 3) {
                                                              return "Please enter a valid first name.";
                                                            }
                                                          },
                                                        ),
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Owner Email*', hintText: "john.doe@gmail.com"),
                                                          controller: emailInputController,
                                                          keyboardType: TextInputType.emailAddress,
                                                          validator: emailValidator,
                                                        ),
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Password*', hintText: "********"),
                                                          controller: pwdInputController,
                                                          obscureText: true,
                                                          validator: pwdValidator,
                                                        ),
                                                        TextFormField(
                                                          decoration: InputDecoration(
                                                              labelText: 'Confirm Password*', hintText: "********"),
                                                          controller: confirmPwdInputController,
                                                          obscureText: true,
                                                          validator: pwdValidator,
                                                        ),

                                                        SizedBox(
                                                          height: 5.0,
                                                        ),
                                                        RaisedButton(
                                                          child: Text("Register"),
                                                          color: Theme.of(context).primaryColor,
                                                          textColor: Colors.white,
                                                          onPressed: () {
                                                            showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    title: Text("Error"),
                                                                    content: Text("The passwords do not match"),
                                                                    actions: <Widget>[
                                                                      FlatButton(
                                                                        child: Text("Close"),
                                                                        onPressed: () {
                                                                          Navigator.of(context).pop();
                                                                        },
                                                                      )
                                                                    ],
                                                                  );
                                                                }
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  )))
                                        ],
                                      ),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

}

