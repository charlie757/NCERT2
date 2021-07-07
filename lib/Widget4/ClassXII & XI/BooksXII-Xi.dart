import 'package:flutter/material.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTBookPageXIIand%20XI/XIIand%20XIdata.dart';
import 'package:ncert5/Widget5%20show%20PDF%20FIle/PDFScreen%20For%20NCERTBooksPageXII%20andXI/PDFScreen.dart';

class Books extends StatefulWidget {
  const Books({Key key, this.classXII}) : super(key: key);
  final ClassXII classXII;
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.classXII.name),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PDFScreen()));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    widget.classXII.img,
                    height: 70,
                    width: 80,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: widget.classXII.name),
                    TextSpan(text: "-I")
                  ]))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PDFScreen()));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    widget.classXII.img,
                    height: 70,
                    width: 80,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: widget.classXII.name),
                    TextSpan(text: "-II")
                  ]))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
