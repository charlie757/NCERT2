import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class OnlinePDF extends StatefulWidget {
  const OnlinePDF({Key key}) : super(key: key);

  @override
  _OnlinePDFState createState() => _OnlinePDFState();
}

class _OnlinePDFState extends State<OnlinePDF> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
      "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
    );

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to online PDF")),
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
                lazyLoad: false,
                scrollDirection: Axis.vertical,
              ),
      ),
    );
  }
}
