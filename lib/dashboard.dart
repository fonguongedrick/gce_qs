import 'package:flutter/material.dart';
import 'chemistry.dart';
import 'profile.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'maths.dart';
import 'physics.dart';
import 'biology.dart';
import 'geology.dart';
import 'questions.dart';

class DashboardScreen extends StatefulWidget {
  final String name;
  final int userId;
  final String email;
  final String school;
  final String password;

  const DashboardScreen({
    required this.userId,
    required this.name,
    required this.email,
    required this.school,
    required this.password
  });

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
 
  String pdfFilePath = '/assets/PHY201.pdf';
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
void initState() {
  super.initState();
  _pages = [
    HomeScreen(Name: widget.name),
    PastQuestionsScreen(),
    ProfilePage(
      userId: widget.userId,
      name: widget.name,
      email: widget.email,
      school: widget.school,
      password: widget.password,
    ),
  ];
}

  void _openDrawer() {
    Scaffold.of(context).openDrawer();
  }
  Future<void> logoutUser(BuildContext context) async {
  try {
    // Clear user authentication data (example using SharedPreferences)
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('name');
    await prefs.remove('password');
    await prefs.remove('userId'); 
    await prefs.remove('school');
    await prefs.remove('email');
    await prefs.remove('LoggedIn'); // Replace 'userId' with your actual user ID key

    // After clearing the data, navigate the user back to the login screen
    
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  } catch (error) {
    // Handle any errors that might occur during the logout process
    print('Error during logout: $error');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Error'),
          content: Text('An error occurred while logging out. Please try again.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Dashboard',
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        // Change the leading widget to a menu icon
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.blue,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        
      ),
      // Add a Drawer widget to the Scaffold
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(0),
          color: Colors.grey[300],
          child: Column(
            
            children: [
               // Add a DrawerHeader widget
              DrawerHeader(
  decoration: BoxDecoration(
    color: Colors.lightBlue,
  ),
  child: Column(
    children: [
      Image.asset('assets/drI.png', height: 100, width: 100,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
           GestureDetector(
            onTap: () {
            Navigator.of(context).pop(); 
            },
            child: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  ),
),
              // Add Drawer items
ListTile(
              leading: Icon(Icons.home, color: Colors.blue,),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pop();  // Navigate to Home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.blue,),
              title: Text('Past Questions'),
              onTap: () {
                 Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Subjects()),
                         
                        );// Navigate to Past Questions screen
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue,),
              title: Text('Profile'),
              onTap: () {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(userId: widget.userId, name :widget.name,
        email: widget.email,
        school: widget.school,
        password: widget.password ),
                          ),
                        ); // Navigate to Profile screen
              },
            ),
  SizedBox(height: 210,),
Padding(
  padding: const EdgeInsets.only(left:38.0, bottom: 0),
  child:   Column(
  
    mainAxisAlignment: MainAxisAlignment.end,
  
    children: [
  
      Text(''),
  
          ListTile(
  
      
  
      
  
      
  
       titleAlignment: ListTileTitleAlignment.bottom,
  
      
  
      
  
      
  
      title: Row(
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
        children: [
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          Icon(Icons.logout, color: Colors.blue),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          SizedBox(width: 10),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          Text('Logout', textAlign: TextAlign.justify,),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
        ],
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
      ),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
      onTap: () {
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
        showDialog(
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          context: context,
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          barrierDismissible: false, // Prevent dialog dismissal on tap outside
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
          builder: (BuildContext context) {
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
            return Dialog(
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
              child: Container(
  
      
  
      
  
      
  
                height: 140,
  
      
  
      
  
      
  
                padding: EdgeInsets.all(16.0),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                child: Column(
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                  mainAxisSize: MainAxisSize.min,
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                  children: [
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                    SpinKitCircle(
  
      
  
      
  
      
  
                      color: Colors.blue,
  
      
  
      
  
      
  
                      size: 50.0,
  
      
  
      
  
      
  
                    ),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                    SizedBox(height: 16.0),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                    Text(
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                      'Logging out...',
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                      style: TextStyle(fontSize: 16.0),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                    ),
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                  ],
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
                ),
  
      
  
      
  
    
  
              ),
  
            );
  
          },
  
        );  
  
        Future.delayed(Duration(seconds: 3), () {   
  
            logoutUser(context);
  
          Navigator.pop(context); // Close the dialog
  
      
  
        });
  
      
  
      },
  
      
  
      
  
      
  
      
  
      
  
      
  
      
  
      ),
  
    ],
  
  ),
),
            
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Past Questions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),*/
    );
  }
}

class HomeScreen extends StatelessWidget {
  String pdfFilePath = '/assets/PHY201.pdf';
  late String Name;
  HomeScreen({required this.Name});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.lightBlue
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome $Name',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                    
                  ),
                  
                  SizedBox(height: 18),
                  Expanded(
                    child: Text(
                      'Education is the most powerful weapon you can use to change the world',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'GCE A level past questions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/chemistry.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Chemistry',
                          style: TextStyle(fontSize: 18),
                        ),
                        //SizedBox(width: 88),
                        IconButton(onPressed: () {
                           Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Chemistry()),
                         
                        );
                         }, icon: Icon(Icons.arrow_forward, color: Colors.black,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/physics.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Physics',
                          style: TextStyle(fontSize: 18),
                        ),
                       IconButton(onPressed: () {
                           Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Physics()),
                         
                        );
                         }, icon: Icon(Icons.arrow_forward, color: Colors.black,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/maths.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Mathematics',
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(onPressed: () {
                           Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Mathematics()),
                         
                        );
                         }, icon: Icon(Icons.arrow_forward, color: Colors.black,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                              image: AssetImage('assets/biology.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Biology',
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(onPressed: () {
                           Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Biolody()),
                         
                        );
                         }, icon: Icon(Icons.arrow_forward, color: Colors.black,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                              image: AssetImage('assets/biology.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Geology',
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(onPressed: () {
                           Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Geology()),
                         
                        );
                         }, icon: Icon(Icons.arrow_forward, color: Colors.black,)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PastQuestionsScreen extends StatefulWidget {
  @override
  State<PastQuestionsScreen> createState() => _PastQuestionsScreenState();
}

class _PastQuestionsScreenState extends State<PastQuestionsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Past Questions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}





class ProfilePage extends StatefulWidget {
  final int userId;
  final String name;
  final String email;
  final String school;
  final String password;

  ProfilePage({
    required this.userId,
    required this.name,
    required this.email,
    required this.school,
    required this.password,
  });

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String newName = '';
  late String newSchool = '';
  late String newPassword = '';

  String getInitials(String name) {
    List<String> nameParts = name.split(' ');
    String initials = '';

    for (String part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0].toUpperCase();
      }
    }

    return initials;
  }

  void updateUserProfile() async {
    // Construct the request body
    Map<String, dynamic> requestBody = {
      'userId': widget.userId,
      'name': newName,
      'school': newSchool,
      'password': newPassword,
    };

    // Send the request to the server
    final response = await http.post(
      Uri.parse('https://icademia.me/gce_qs/api/profile_update.php'), // Replace with your server endpoint
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );
      final jsonData = jsonDecode(response.body);
     print(jsonData);
    // Handle the response
    if (response.statusCode == 200) {
      // Profile update successful
      showPopup('Profile Updated Successfully');
    } else {
      // Profile update failed
      showPopup('Failed to Update Profile. Please try again.');
    }
  }

  void showPopup(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Profile Update'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left:24, right: 24, top: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.lightBlue,
              child: Text(
                getInitials(widget.name),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                initialValue: widget.name,
                onChanged: (value) {
                  newName = value;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(top: 16, left: 8),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: Text('${widget.email}'),
            ),
            SizedBox(height: 16),
            Text(
              'School',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                initialValue: widget.school,
                onChanged: (value) {
                  newSchool = value;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                initialValue: widget.password,
                onChanged: (value) {
                  newPassword = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
            SizedBox(height: 24),
           Container(
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
  ),
  child: TextButton(
    onPressed: () async {
      showDialog(
        context: context,
        barrierDismissible: false, // Prevent dialog dismissal on tap outside
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.grey,
            child: Container(
              color: Colors.grey,
              height: 150,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitCircle(
                    color: Colors.blue,
                    size: 50.0,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Updating...',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          );
        },
      );

       updateUserProfile(); // Wait for the login process to complete

    },
    child: Text(
      'Update ',
      style: TextStyle(color: Colors.white),
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}