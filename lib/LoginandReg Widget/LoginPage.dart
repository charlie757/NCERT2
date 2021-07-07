import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ncert5/HomePage%20Widget/HomePage.dart';
import 'package:ncert5/LoginandReg%20Widget/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: SingleChildScrollView(
                child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Welcome", style: TextStyle(fontSize: 25)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 100,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/reg.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                        width: width,
                      ),
                    ),
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Please typean email";
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim();
                      });
                    },
                    decoration: InputDecoration(hintText: "Enter Username"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return "Your password needs to be atleast 6 characters";
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value.trim();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        suffixIcon: IconButton(
                          splashRadius: 20,
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        )),
                    obscureText: _secureText,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: width,
                    child: RaisedButton(
                      onPressed: () {
                        final formstate = _formkey.currentState;
                        if (formstate.validate()) {
                          auth.createUserWithEmailAndPassword(
                              email: _email, password: _password);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account? "),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text("SignUp",
                              style: TextStyle(
                                  color: Colors.lightGreen, fontSize: 18)))
                    ],
                  )
                ],
              ),
            ))));
  }
}
