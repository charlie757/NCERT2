import 'package:flutter/material.dart';

import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email = '';
  String _password = '';

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                // SizedBox(height: 40),
                Image.asset(
                  'assets/images/login.png',
                  width: width,
                ),
                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return "Please Enter The Name";
                    }
                  },
                  decoration: InputDecoration(labelText: "Enter Full Name"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return "Please typean email";
                    }
                  },
                  decoration: InputDecoration(labelText: "Enter Email Address"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (input) {
                    if (input.length < 6) {
                      return "Your password needs to be atleast 6 characters";
                    }
                  },
                  decoration: InputDecoration(labelText: "Enter Password"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (input) {
                    if (input.length < 6) {
                      return "Please Enter The Same Password";
                    }
                  },
                  decoration:
                      InputDecoration(labelText: "Enter Confarm Password"),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: width,
                  child: RaisedButton(
                    onPressed: () {
                      final formstate = _formkey.currentState;
                      if (formstate.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      }
                    },
                    color: Colors.green,
                    child: Text(
                      "SignIn",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
