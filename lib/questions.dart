import 'package:flutter/material.dart';
import 'maths.dart';
import 'physics.dart';
import 'biology.dart';
import 'geology.dart';
import 'chemistry.dart';
class Subjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Questions', style: TextStyle(color: Colors.black),),
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
                    child: Text('Chemistry'),
                    onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Chemistry()),
                         
                        );// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('Physics'),
                    onPressed: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Physics()),
                         
                        ); // Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('Mathematics'),
                    onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Mathematics()),
                         
                        );// Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('Biology'),
                    onPressed: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Biolody()),
                         
                        ); // Do something when the button is pressed.
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/folder_icon.png', height: 40, width: 40,),
                  TextButton(
                    child: Text('Geology'),
                    onPressed: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Geology()),
                         
                        );// Do something when the button is pressed.
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