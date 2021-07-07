import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class OfflinePDF extends StatefulWidget {
  const OfflinePDF({Key key}) : super(key: key);

  @override
  _OfflinePDFState createState() => _OfflinePDFState();
}

class _OfflinePDFState extends State<OfflinePDF> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/images/chapter-1.pdf');

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to Offline Study")),
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
