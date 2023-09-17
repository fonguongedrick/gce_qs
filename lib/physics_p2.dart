import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PhysicsP22023 extends StatefulWidget {
 
  @override
  _PhysicsP22023State createState() => _PhysicsP22023State();
}
class _PhysicsP22023State extends State<PhysicsP22023> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
        title: Text('Physics Paper 2 2023', style: TextStyle(color: Colors.black),),
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
class PhysicsP22022 extends StatefulWidget {
 
  @override
  _PhysicsP22022State createState() => _PhysicsP22022State();
}
class _PhysicsP22022State extends State<PhysicsP22022> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2022', style: TextStyle(color: Colors.black),),
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
class PhysicsP22021 extends StatefulWidget {
 
  @override
  _PhysicsP22021State createState() => _PhysicsP22021State();
}
class _PhysicsP22021State extends State<PhysicsP22021> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2021', style: TextStyle(color: Colors.black),),
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
class PhysicsP22020 extends StatefulWidget {
 
  @override
  _PhysicsP22020State createState() => _PhysicsP22020State();
}
class _PhysicsP22020State extends State<PhysicsP22020> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
        title: Text('Physics Paper 2 2020', style: TextStyle(color: Colors.black),),
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
class PhysicsP22019 extends StatefulWidget {
 
  @override
  _PhysicsP22019State createState() => _PhysicsP22019State();
}
class _PhysicsP22019State extends State<PhysicsP22019> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2019', style: TextStyle(color: Colors.black),),
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
class PhysicsP22018 extends StatefulWidget {
 
  @override
  _PhysicsP22018State createState() => _PhysicsP22018State();
}
class _PhysicsP22018State extends State<PhysicsP22018> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
        title: Text('Physics Paper 2 2018', style: TextStyle(color: Colors.black),),
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
class PhysicsP22017 extends StatefulWidget {
 
  @override
  _PhysicsP22017State createState() => _PhysicsP22017State();
}
class _PhysicsP22017State extends State<PhysicsP22017> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2017', style: TextStyle(color: Colors.black),),
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
class PhysicsP22016 extends StatefulWidget {
 
  @override
  _PhysicsP22016State createState() => _PhysicsP22016State();
}
class _PhysicsP22016State extends State<PhysicsP22016> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2016', style: TextStyle(color: Colors.black),),
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
class PhysicsP22015 extends StatefulWidget {
 
  @override
  _PhysicsP22015State createState() => _PhysicsP22015State();
}
class _PhysicsP22015State extends State<PhysicsP22015> {
  late PDFViewController _pdfViewController;
  int _currentPage = 0;
  int _totalPages = 0;
  String? path;
  bool isReady = false;

  Future<File> createFileFromAsset(ByteData data) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/AL-2022-BIOLOGY-P2-Copy.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/AL-2022-BIOLOGY-P2-Copy.pdf');
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
         title: Text('Physics Paper 2 2015', style: TextStyle(color: Colors.black),),
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