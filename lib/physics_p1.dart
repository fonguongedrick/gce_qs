import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PhysicsP12023 extends StatefulWidget {
 
  @override
  _PhysicsP12023State createState() => _PhysicsP12023State();
}
class _PhysicsP12023State extends State<PhysicsP12023> {
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
        title: Text('Physics Paper 1 2023', style: TextStyle(color: Colors.black),),
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
class PhysicsP12022 extends StatefulWidget {
 
  @override
  _PhysicsP12022State createState() => _PhysicsP12022State();
}
class _PhysicsP12022State extends State<PhysicsP12022> {
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
         title: Text('Physics Paper 1 2022', style: TextStyle(color: Colors.black),),
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
class PhysicsP12021 extends StatefulWidget {
 
  @override
  _PhysicsP12021State createState() => _PhysicsP12021State();
}
class _PhysicsP12021State extends State<PhysicsP12021> {
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
         title: Text('Physics Paper 1 2021', style: TextStyle(color: Colors.black),),
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
class PhysicsP12020 extends StatefulWidget {
 
  @override
  _PhysicsP12020State createState() => _PhysicsP12020State();
}
class _PhysicsP12020State extends State<PhysicsP12020> {
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
        title: Text('Physics Paper 1 2020', style: TextStyle(color: Colors.black),),
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
class PhysicsP12019 extends StatefulWidget {
 
  @override
  _PhysicsP12019State createState() => _PhysicsP12019State();
}
class _PhysicsP12019State extends State<PhysicsP12019> {
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
         title: Text('Physics Paper 1 2019', style: TextStyle(color: Colors.black),),
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
class PhysicsP12018 extends StatefulWidget {
 
  @override
  _PhysicsP12018State createState() => _PhysicsP12018State();
}
class _PhysicsP12018State extends State<PhysicsP12018> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/Physics_2018_P1.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/Physics_2018_P1.pdf');
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
        title: Text('Physics Paper 1 2018', style: TextStyle(color: Colors.black),),
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
class PhysicsP12017 extends StatefulWidget {
 
  @override
  _PhysicsP12017State createState() => _PhysicsP12017State();
}
class _PhysicsP12017State extends State<PhysicsP12017> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/Physics_2017_P1.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/Physics_2017_P1.pdf');
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
         title: Text('Physics Paper 1 2017', style: TextStyle(color: Colors.black),),
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
class PhysicsP12016 extends StatefulWidget {
 
  @override
  _PhysicsP12016State createState() => _PhysicsP12016State();
}
class _PhysicsP12016State extends State<PhysicsP12016> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/Physics_2016_P1.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/Physics_2016_P1.pdf');
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
         title: Text('Physics Paper 1 2016', style: TextStyle(color: Colors.black),),
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
class PhysicsP12015 extends StatefulWidget {
 
  @override
  _PhysicsP12015State createState() => _PhysicsP12015State();
}
class _PhysicsP12015State extends State<PhysicsP12015> {
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
         title: Text('Physics Paper 1 2015', style: TextStyle(color: Colors.black),),
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