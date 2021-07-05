import 'package:flutter/material.dart';
import 'package:ncert2/PDF%20Widget/DownloadPDF.dart';
import 'package:ncert2/PDF%20Widget/OfflinePDF.dart';
import 'package:ncert2/PDF%20Widget/OnlinePDF.dart';
import 'package:ncert2/Widget5%20show%20PDF%20FIle/PDFScreen%20For%20NCERTBooksPageXII%20andXI/data.dart';

class PDFScreen1 extends StatelessWidget {
  const PDFScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF File'),
      ),
      body: ListView.builder(
          itemCount: modal5.length,
          itemBuilder: (context, index) {
            MathPart1 mathPart1 = modal5[index];
            return Container(
              height: 80,
              child: Card(
                elevation: 10,
                shadowColor: Colors.cyan,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mathPart1.name1),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DownloadPdf()));
                                  },
                                  child: Container(
                                    color: Colors.brown,
                                    alignment: Alignment.center,
                                    height: 20,
                                    child: Text(
                                      "Download PDF",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PDF()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 20,
                                    color: Colors.grey,
                                    child: Text("Online"),
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PDF1()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 20,
                                    color: Colors.cyan,
                                    child: Text("Offline"),
                                  )),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
