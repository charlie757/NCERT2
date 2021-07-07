import 'package:flutter/material.dart';
import 'package:ncert5/Widget2/data.dart';
import 'package:ncert5/Widget3%20NCERTBooks/NCERTImportantQuestionPage.dart';

class NCERTImportantQuestion extends StatelessWidget {
  const NCERTImportantQuestion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.blue,
      Colors.orangeAccent,
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
      Colors.red,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Important Question"),
      ),
      body: GridView.builder(
          itemCount: modal1.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            NCERTBooks ncertBooks = modal1[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NCERTImportantQuestionPage(
                                ncertBooks: ncertBooks,
                              )));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: colors[index],
                        child: Text(ncertBooks.number),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: ncertBooks.name),
                        TextSpan(text: " - Imp. Question"),
                      ]))
                    ],
                  ),
                ));
          }),
    );
  }
}
