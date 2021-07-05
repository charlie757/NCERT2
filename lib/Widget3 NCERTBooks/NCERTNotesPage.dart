import 'package:flutter/material.dart';
import 'package:ncert2/Widget%202/data.dart';
import 'package:ncert2/Widget3%20NCERT%20Books/data.dart';
import 'package:ncert2/Widget5%20show%20PDF%20FIle/PDFScreen%20for%20X-I%20Books/PDFScreen1.dart';

class NCERTNotesPage extends StatelessWidget {
  const NCERTNotesPage({Key key, this.ncertBooks}) : super(key: key);
  final NCERTBooks ncertBooks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: RichText(
              text: TextSpan(children: [
        TextSpan(text: ncertBooks.name, style: TextStyle(fontSize: 18)),
        TextSpan(text: " - Notes", style: TextStyle(fontSize: 18)),
      ]))),
      body: GridView.builder(
          itemCount: modal2.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            Solution solution = modal2[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PDFScreen1()));
              },
              child: Card(
                  elevation: 5,
                  shadowColor: Colors.brown,
                  shape: Border.all(style: BorderStyle.solid),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        solution.img,
                        height: 70,
                        width: 80,
                      ),
                      Text(solution.name)
                    ],
                  )),
            );
          }),
    );
  }
}
