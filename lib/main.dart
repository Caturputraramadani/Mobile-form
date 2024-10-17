import 'package:flutter/material.dart';
import 'Page2.dart';
import 'loginPage.dart'; // Import the login page

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(), // Start from the login page
));

class Home extends StatelessWidget {
  final String name;
  final String school;
  final String role;
  final String description;

  const Home({
    Key? key,
    required this.name,
    required this.school,
    required this.role,
    required this.description,
  }) : super(key: key);

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
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color.fromRGBO(231, 68, 14, 0.235),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/harry.jpg'),
                      ),
                      Text(name, textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text(
                        "Gryffindor Student at Hogwarts & Software and Game Dev Student in Muggle Vocational High School Wikrama",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 238, 231, 205)),
                      ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2(name: name, school: school, role: role, description: description)),
                            );
                          },
                          child: Text('See More'),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
