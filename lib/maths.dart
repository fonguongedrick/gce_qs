import 'package:flutter/material.dart';



class Mathematics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics', style: TextStyle(color: Colors.black),),
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