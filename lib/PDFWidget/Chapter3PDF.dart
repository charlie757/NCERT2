import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class Chapter3PDF extends StatefulWidget {
  const Chapter3PDF({Key key}) : super(key: key);

  @override
  _Chapter3PDFState createState() => _Chapter3PDFState();
}

class _Chapter3PDFState extends State<Chapter3PDF> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/images/chapter-3.pdf');

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chapter-3")),
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
