import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ViewPDF extends StatefulWidget {
  const ViewPDF({Key key}) : super(key: key);

  @override
  _ViewPDFState createState() => _ViewPDFState();
}

class _ViewPDFState extends State<ViewPDF> {
  PDFDocument doc;
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
    ViewNow() async {
      doc = await PDFDocument.fromURL(data);
      setState(() {});
    }

    Widget Loading() {
      ViewNow();
      if (doc == null) ;
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("PDF File"),
        ),
        body: doc == null ? Loading() : PDFViewer(document: doc));
  }
}
