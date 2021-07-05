import 'package:flutter/material.dart';
import 'package:ncert2/PDF%20Widget/Chapter4PDF.dart';
import 'package:ncert2/PDF%20Widget/Chapter5PDF.dart';
import 'package:ncert2/PDF%20Widget/Chapter6PDF.dart';
import 'package:ncert2/PDF%20Widget/DownloadPDF.dart';
import 'package:ncert2/PDF%20Widget/MathChapterPDF%20Widget/Chapter1PDF.dart';
import 'package:ncert2/PDF%20Widget/MathChapterPDF%20Widget/Chapter2PDF.dart';
import 'package:ncert2/PDF%20Widget/MathChapterPDF%20Widget/Chapter3PDF.dart';
import 'package:ncert2/PDF%20Widget/OfflinePDF.dart';
import 'package:ncert2/PDF%20Widget/OnlinePDF.dart';
import 'package:ncert2/Widget5%20show%20PDF%20FIle/PDFScreen%20For%20NCERTBooksPageXII%20andXI/data.dart';

class PDFScreen extends StatelessWidget {
  const PDFScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('PDF File'),
        ),
        body: ListView(
          children: [
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-1'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter1PDF())
                      ],
                    )
                  ],
                ))),
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-2'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter2PDF())
                      ],
                    )
                  ],
                ))),
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-3'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter3PDF())
                      ],
                    )
                  ],
                ))),
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-4'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter4PDF())
                      ],
                    )
                  ],
                ))),
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-5'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter5PDF())
                      ],
                    )
                  ],
                ))),
            Container(
                height: 70,
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Name('Chapter-6'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        download(width, context, DownloadPdf()),
                        SizedBox(
                          width: 10,
                        ),
                        online(width, context, PDF()),
                        SizedBox(
                          width: 10,
                        ),
                        offline(width, context, Chapter6PDF())
                      ],
                    )
                  ],
                )))
          ],
        ));
  }

  Expanded offline(double width, BuildContext context, route) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.purple,
        child: Text("Offline"),
      ),
    ));
  }

  Expanded online(double width, BuildContext context, route1) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => route1));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.orange,
        child: Text("Online"),
      ),
    ));
  }

  Expanded download(double width, BuildContext context, route2) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => route2));
      },
      child: Container(
        alignment: Alignment.center,
        height: 20,
        color: Colors.blue,
        child: Text("download"),
      ),
    ));
  }

  Widget Name(String name) {
    return Text(name);
  }
}
