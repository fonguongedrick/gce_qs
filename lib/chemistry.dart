import 'package:flutter/material.dart';
import 'chemistry_p1.dart';


class Chemistry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemistry', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:32.0, ),
          child: Column(
            children: [
             SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2023'),
                    onPressed: () {
                      
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2023', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });})
                  
  ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2022'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2022', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                             Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => ChemistryP12022()),
                         
                        );// Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2021'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2021', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                              Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => ChemistryP12021()),
                         
                        ); // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2020'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2020', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2019'),
                    onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2019', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });  // Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2018'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2018', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2017'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2017', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2016'),
                    onPressed: () {
                     showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2016', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        }); // Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('2015'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              height: 335,
                              child: AlertDialog(
                                title: Text('2015', textAlign: TextAlign.center,),
                                content: Column(
                                  children: [
                                    
                                        Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper I'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text(' Paper II'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/pdf_icon.png', height: 30, width: 30,),
                                        TextButton(
                                          child: Text('Paper III'),
                                          onPressed: () {
                                            // Do something when the button is pressed.
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(''),
                                        IconButton(onPressed: (){
                                         Navigator.pop(context);
                                        }, icon: Icon(Icons.cancel, color: Colors.blue,))
                                          
                                          
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ); // Do something when the button is pressed.
                        });// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
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
    final filePath = '${directory.path}/JUNE 2015.pdf';
    final file = File(filePath);
    file.writeAsBytes(data.buffer.asInt8List(), flush: true);
    return file;
  }

  Future<ByteData> loadPdfFromAssets() async {
    return await rootBundle.load('assets/JUNE 2015.pdf');
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Page ${_currentPage + 1} of $_totalPages',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                _pdfViewController.setPage(_currentPage - 1);
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                _pdfViewController.setPage(_currentPage + 1);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
}*/