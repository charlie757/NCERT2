import 'package:flutter/material.dart';
import 'package:ncert2/Widget3%20NCERT%20Books/NCERTBooksPageX-I%20Class/data.dart';
import 'package:ncert2/Widget4/Class%20X-I/BooksX-I.dart';

class ClassVIIBooks extends StatelessWidget {
  const ClassVIIBooks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class VII Books"),
      ),
      body: GridView.builder(
          itemCount: modal2.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            ChatModal chatModal = modal2[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Books1(
                              chatModal: chatModal,
                            )));
              },
              child: Card(
                  elevation: 5,
                  shadowColor: Colors.grey,
                  shape: Border.all(style: BorderStyle.solid),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        chatModal.img,
                        height: 70,
                        width: 80,
                      ),
                      Text(chatModal.name)
                    ],
                  )),
            );
          }),
    );
  }
}
