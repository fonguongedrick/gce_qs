import 'package:flutter/material.dart';
import 'package:gce_qs/dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gce_qs/registeration.dart';
import 'package:shared_preferences/shared_preferences.dart';




class LoginPageWrapper extends StatefulWidget {
  @override
  _LoginPageWrapperState createState() => _LoginPageWrapperState();
}

class _LoginPageWrapperState extends State<LoginPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool _isLoading = false;
  String errorText = '';

  Future<void> _login() async {
  // Validate input fields
  final email = emailController.text.trim(); // Get user input email
  final password = passwordController.text.trim(); // Get user input password
   setState(() {
    _isLoading = true;
  });
  if (email.isEmpty || password.isEmpty) {
    setState(() {
      errorText = 'Please enter email and password.';
    });
    return;
  }

  final url = 'https://icademia.me/gce_qs/api/login.php'; // Replace with your API endpoint

  try {
    
    

    final response = await http.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
      },
    );

    setState(() {
    _isLoading = false;
  });
    print('Response: ${response.body}');
     final jsonData = jsonDecode(response.body);
     print(jsonData);
  
    if (jsonData['success'] == true) {
      final data = jsonDecode(response.body);
      final user = data['user'];
      
    final name = user['name'];
     final userId = user['id'];
      final school = user['school'];
      SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('LoggedIn', true);
    await prefs.setString('name', name);
    await prefs.setInt('userId', userId);
    await prefs.setString('school', school);
    await prefs.setString('email', email);

      // Login successful, move to the dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen(userId: userId, name :name,
        email: email,
        school: school,
        password: password )),
      );
    } else if (jsonData['success'] == false) {
  // Login failed, display error message
     if (jsonData['error'] == 'Wrong Password') {
  setState(() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Wrong Password.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                //Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  });}
      else if (jsonData['error'] == 'Invalid email or password') {
  setState(() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Wrong Email.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
               
              },
            ),
          ],
        );
      },
    );
  });}
} else {
    setState(() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid email or password.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );});
  // Login successful
  // Redirect to the home page or perform any other actions
}
  } catch (e) {
    // Error occurred during API call
    Navigator.pop(context); // Dismiss loading dialog
    setState(() {
      errorText = 'An error occurred. Please try again later.';
    });
  }
  
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                // Image
                Image.asset(
                  'assets/drI.png',
                  height: 170,
                  width: 170,
                ),
                SizedBox(height: 16),
                // Text 'Login'
                Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                // Text 'Welcome back to login'
                Text(
                  'Welcome back to login',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                // Text field container with some shadow, circular radius, with child 'Email'
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                // Row with 'Password' text field and visibility toggle icon
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                          obscureText: !passwordVisible,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.blue,
                        ),
                        onPressed:() {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 55),
                // Blue container with child 'Login'
                Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: () async {
        await _login(); // Wait for the login process to complete
      
          },
          child: Text(
        'Login',
        style: TextStyle(color: Colors.white),
          ),
        ),
      ),
                SizedBox(height: 16),
                // Row 'Don't have an account?' and 'Sign Up', in blue color and should be clickable.
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(width: 4),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                // Display error message if any
                Text(
                  errorText,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      Visibility(
              visible: _isLoading,
              child: Container(
                color: Colors.black54,
                child: Center(
                  child: Container(
                    height: 170,
                    width: 170,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SpinKitFadingCircle(
                          color: Colors.blue,
                          size: 50.0,
                        ),
                        Text('Logging in...')
                      ],
                    ),
                  ),
                ),
              ),
    )]),
    );
  }
}