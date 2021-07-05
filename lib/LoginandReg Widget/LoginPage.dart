// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _secureText = true;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         body: Padding(
//             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/images/reg.jpg',
//                     height: 300,
//                     width: width,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(hintText: "Enter Username"),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter Password",
//                         suffixIcon: IconButton(
//                           splashRadius: 20,
//                           icon: Icon(_secureText
//                               ? Icons.visibility_off
//                               : Icons.visibility),
//                           onPressed: () {
//                             setState(() {
//                               _secureText = !_secureText;
//                             });
//                           },
//                         )),
//                     obscureText: _secureText,
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     width: width,
//                     child: RaisedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => HomePage()));
//                       },
//                       child: Text(
//                         "Login",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Don't have a account? "),
//                       GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => RegisterPage()));
//                           },
//                           child: Text("SignUp",
//                               style: TextStyle(
//                                   color: Colors.lightGreen, fontSize: 18)))
//                     ],
//                   )
//                 ],
//               ),
//             )));
//   }
// }
