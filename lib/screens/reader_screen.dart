import 'package:flutter/material.dart';
import 'package:pdf_reader_app/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {super.key});

  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.doc.docTitle!),
      ),
      body: SizedBox(
        child: SfPdfViewer.network(widget.doc.docUrl!),
      ),
    );
  }
}
