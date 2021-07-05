import 'package:flutter/material.dart';
import 'package:ncert2/Widget3%20NCERT%20Books/NCERTBookPageXIIand%20XI/XIIand%20XIdata.dart';
import 'package:ncert2/Widget4/ClassXII%20&%20XI/BooksXII-Xi.dart';

class ClassXIBooks extends StatelessWidget {
  const ClassXIBooks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XI Books"),
      ),
      body: GridView.builder(
          itemCount: modal1.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            ClassXII classXII = modal1[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Books(
                              classXII: classXII,
                            )));
              },
              child: Card(
                  elevation: 5,
                  shadowColor: Colors.cyan,
                  shape: Border.all(style: BorderStyle.solid),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        classXII.img,
                        height: 70,
                        width: 80,
                      ),
                      Text(classXII.name)
                    ],
                  )),
            );
          }),
    );
  }
}
