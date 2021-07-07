import 'package:flutter/material.dart';
import 'package:ncert5/Widget2/data.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBookPageXIIand%20XI/ClassXIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBookPageXIIand%20XI/ClassXIIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassIIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassIIIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassIVBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassIXBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassVBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassVIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassVIIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassVIIIBooks.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBooksPageX-I%20Class/ClassXBooks.dart';

class NCERTBookPage extends StatefulWidget {
  const NCERTBookPage({Key key}) : super(key: key);

  @override
  _NCERTBookPageState createState() => _NCERTBookPageState();
}

class _NCERTBookPageState extends State<NCERTBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NCERT Books")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassXIIBooks()));
              },
              child: Cards('12', 'Class XII Books', false)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassXIBooks()));
              },
              child: Cards('11', 'Class XI Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassXBooks()));
              },
              child: Cards('10', 'Class X Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassIXBooks()));
              },
              child: Cards('9', 'Class IX Books', false)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassVIIIBooks()));
              },
              child: Cards('8', 'Class VIII Books', false)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassVIIBooks()));
              },
              child: Cards('7', 'Class VII Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassVIBooks()));
              },
              child: Cards('6', 'Class VI Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassVBooks()));
              },
              child: Cards('5', 'Class V Books', false)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassIVBooks()));
              },
              child: Cards('4', 'Class IV Books', false)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassIIIBooks()));
              },
              child: Cards('3', 'Class III Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassIIBooks()));
              },
              child: Cards('2', 'Class II Books', true)),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassIBooks()));
              },
              child: Cards('1', 'Class I Books', false))
        ],
      ),
    );
  }

  Widget Cards(String number, String name, bool color) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: color ? Colors.tealAccent : Colors.grey,
            radius: 25,
            child: Text(number),
          ),
          Text(name),
        ],
      ),
    );
  }
}
