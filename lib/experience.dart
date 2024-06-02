import 'package:flutter/material.dart';
import 'package:mobileportfolio/main.dart' as Portfolio;

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
          title: Text('Experience'),
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
                leading: Icon(Icons.work),
                title: Text(
                  'Intern - Ceramica',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'January 2022 - April 2022',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.work),
                title: Text(
                  'Junior Developer - Noren Group of Company',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'July 2022 - September 2022',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.work),
                title: Text(
                  'Cyber Security Analyst - NBI',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'December 2022 - February 2023',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.work),
                title: Text(
                  'Senior Developer - PAYMAYA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'March 2023- Present',
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
