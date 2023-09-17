import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BiologyP12023 extends StatefulWidget {
 
  @override
  _BiologyP12023State createState() => _BiologyP12023State();
}
class _BiologyP12023State extends State<BiologyP12023> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
        title: Text('Biology Paper 1 2023', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
               
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12022 extends StatefulWidget {
 
  @override
  _BiologyP12022State createState() => _BiologyP12022State();
}
class _BiologyP12022State extends State<BiologyP12022> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
         title: Text('Biology Paper 1 2022', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                             ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12021 extends StatefulWidget {
 
  @override
  _BiologyP12021State createState() => _BiologyP12021State();
}
class _BiologyP12021State extends State<BiologyP12021> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
         title: Text('Biology Paper 1 2021', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12020 extends StatefulWidget {
 
  @override
  _BiologyP12020State createState() => _BiologyP12020State();
}
class _BiologyP12020State extends State<BiologyP12020> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
        title: Text('Biology Paper 1 2020', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12019 extends StatefulWidget {
 
  @override
  _BiologyP12019State createState() => _BiologyP12019State();
}
class _BiologyP12019State extends State<BiologyP12019> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/Biology Paper 1 2019 Advanced  Level Cameroon GCE Revision Questions.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/Biology Paper 1 2019 Advanced  Level Cameroon GCE Revision Questions.pdf');
  }
  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
         title: Text('Biology Paper 1 2019', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                Container(
                  child: PDFView(
                    filePath: path!,
                    onViewCreated: (PDFViewController pdfViewController) {
                      _pdfViewController = pdfViewController;
                      _getTotalPages();
                    },
                    onPageChanged: (int? page, int? total) {
                      if (page != null && total != null) {
                        setState(() {
                          _currentPage = page;
                          _totalPages = total;
                        });
                      }
                    },
                    onPageError: (page, error) {
                      // Handle page error here
                    },
                  ),
                ),
                // Add a scrolling icon at the right side of the page
               
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12018 extends StatefulWidget {
 
  @override
  _BiologyP12018State createState() => _BiologyP12018State();
}
class _BiologyP12018State extends State<BiologyP12018> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
        title: Text('Biology Paper 1 2018', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12017 extends StatefulWidget {
 
  @override
  _BiologyP12017State createState() => _BiologyP12017State();
}
class _BiologyP12017State extends State<BiologyP12017> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/Al-Biology-2017-p1.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/Al-Biology-2017-p1.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
         title: Text('Biology Paper 1 2017', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12016 extends StatefulWidget {
 
  @override
  _BiologyP12016State createState() => _BiologyP12016State();
}
class _BiologyP12016State extends State<BiologyP12016> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
        title: Text('Physics'),
        centerTitle: true,
        elevation: 0,
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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
class BiologyP12015 extends StatefulWidget {
 
  @override
  _BiologyP12015State createState() => _BiologyP12015State();
}
class _BiologyP12015State extends State<BiologyP12015> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P1-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P1-Copy.pdf');
  }

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets().then((value) {
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
        title: Text('Physics'),
        centerTitle: true,
        elevation: 0,
      ),
      body: isReady
          ? Stack(
              children: [
                PDFView(
                  filePath: path!,
                  onViewCreated: (PDFViewController pdfViewController) {
                    _pdfViewController = pdfViewController;
                    _getTotalPages();
                  },
                  onPageChanged: (int? page, int? total) {
                    if (page != null && total != null) {
                      setState(() {
                        _currentPage = page;
                        _totalPages = total;
                      });
                    }
                  },
                  onPageError: (page, error) {
                    // Handle page error here
                  },
                ),
                // Add a scrolling icon at the right side of the page
                
              ],
            )
          : Center(
              child: SpinKitCircle(
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