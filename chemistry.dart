import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show BytesData , rootBundle;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PdfViewerPage extends StatefulWidget {
  final File pdfFile;

  PdfViewerPage({required this.pdfFile});

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
   String? path;
   bool isReady = false;
   Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/PYS201.pdf';
    final file =File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
   }
   Future<ByteData> LoadPdfFromAssets() async {
    return await rootBundle.load('assets/PYS201.pdf');
   }
   @override
   void initState() {
    super.initState();
    LoadPdfFromAssets().then((value) {
      createFileFromAsset(value).then((file) {
        setState(() {
          path = file.path;
          isReady = true;
        });
      });
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: isReady
      ? PDFView(
        filePath: path!,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageSnap: false,
        defaultPage: 0,
        fitPolicy: FitPolicy.BOTH,
      )
      :  Center(
        child: SpinKitFadingCube(
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }

  // Retrieve the total number of pages in the PDF
  void _getTotalPages() async {
    int? total = await _pdfViewController.getPageCount();
    if (total != null) {
      setState(() {
        _totalPages = total;
      });
    }
  }
}