import 'package:flutter/material.dart';
import 'package:ncert2/Widget3%20NCERT%20Books/NCERTBooksPageX-I%20Class/data.dart';
import 'package:ncert2/Widget5%20show%20PDF%20FIle/PDFScreen%20for%20X-I%20Books/PDFScreen1.dart';

class Books1 extends StatefulWidget {
  const Books1({Key key, this.chatModal}) : super(key: key);
  final ChatModal chatModal;
  @override
  _Books1State createState() => _Books1State();
}

class _Books1State extends State<Books1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chatModal.name),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PDFScreen1()));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    widget.chatModal.img,
                    height: 70,
                    width: 80,
                  ),
                  Text(widget.chatModal.name)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
