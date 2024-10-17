import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name;
  final String school;
  final String role;
  final String description;

  const Page2({
    Key? key,
    required this.name,
    required this.school,
    required this.role,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/hogwarts.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/harry.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                // New Card for school, role, and description
                _buildInfoCard(context),

                SizedBox(height: 10),

                // About Section
                _buildSectionCard(context, 'About',
                  'Art, Magic and Technology, will not make me fail in seeing the world, introduce Catur, Student of Wikrama Bogor Vocational High School.'),
                
                SizedBox(height: 10),

                // History Section
                _buildSectionCard(context, 'History',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                
                SizedBox(height: 10),

                // Skills Section
                _buildSkillsCard(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Card(
          color: const Color.fromARGB(104, 250, 86, 86),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text('School: $school', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Role: $role', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Description: $description', style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, String title, String content) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Card(
          color: const Color.fromARGB(104, 250, 86, 86),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  content,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkillsCard(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Card(
          color: const Color.fromARGB(104, 250, 86, 86),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text('React', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Laravel', style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Magic Spells', style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
