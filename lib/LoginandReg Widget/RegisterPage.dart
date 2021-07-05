// import 'package:flutter/material.dart';
// import 'package:ncert2/LoginandReg.%20widget/LoginPage.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key key}) : super(key: key);

//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//         child: Column(
//           children: [
//             // SizedBox(height: 40),
//             Image.asset(
//               'assets/images/login.png',
//               width: width,
//               // height: 200,
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: "Enter Full Name"),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               decoration: InputDecoration(labelText: "Enter Email Address"),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               decoration: InputDecoration(labelText: "Enter Password"),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               decoration: InputDecoration(labelText: "Enter Confarm Password"),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Container(
//               width: width,
//               child: RaisedButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => LoginPage()));
//                 },
//                 color: Colors.green,
//                 child: Text(
//                   "SignIn",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
