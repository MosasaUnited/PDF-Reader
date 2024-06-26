import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader_app/models/document_model.dart';
import 'package:pdf_reader_app/screens/reader_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/icons/pdf.png')),
        title: const Text(
          'PDF Reader',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ), // you can replace it with a logo
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.grey[700],
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Documents',
                style: GoogleFonts.roboto(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              // mapping Document List
              Column(
                children: Document.docList
                    .map((doc) => ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderScreen(doc)));
                          },
                          title: Text(
                            doc.docTitle!,
                            maxLines: 2,
                            style: GoogleFonts.nunito().copyWith(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            '${doc.pageNum!} Pages',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          leading: const Icon(
                            Icons.picture_as_pdf,
                            color: Colors.redAccent,
                            size: 32,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
