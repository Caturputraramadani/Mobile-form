import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String school = '';
  String role = '';
  String description = '';

  void _login() {
  if (_formKey.currentState!.validate()) {
    // Navigate to the main page after successful login with arguments
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Home(
          name: name,
          school: school,
          role: role,
          description: description,
        ),
      ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/hogwarts.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              color: Color.fromRGBO(231, 68, 14, 0.235),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder(), labelStyle: TextStyle(color: Colors.white)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'School', border: OutlineInputBorder(), labelStyle: TextStyle(color: Colors.white)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your school';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          school = value;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Role', border: OutlineInputBorder(), labelStyle: TextStyle(color: Colors.white)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your role';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          role = value;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Description', border: OutlineInputBorder(), labelStyle: TextStyle(color: Colors.white)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a description';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          description = value;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _login,
                        child: Text('Login', style: TextStyle(color: const Color.fromARGB(255, 235, 175, 23))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
