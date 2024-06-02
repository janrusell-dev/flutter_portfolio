import 'package:flutter/material.dart';
import 'package:mobileportfolio/main.dart' as Portfolio;

class Expertise extends StatelessWidget {
  const Expertise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Experties'),
          backgroundColor: Color(0xff25331e),
          elevation: 0,
        ),
        drawer: Portfolio.NavigationDrawer(),
        backgroundColor: Color(0x00050202),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Programming Languages',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Python, Java, C++, JavaScript, and more.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Software testing and QA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Methodologies, test-driven development, automated testing, and quality assurance.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Computer security',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  ' Cybersecurity, encryption, authentication, network security, and best practices.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Mobile App Development',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Android (Java/Kotlin) or iOS (Swift/Objective-C)',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Algorithms and Data Structures',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Sorting algorithms, Graph algorithms, or Tree structures',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
