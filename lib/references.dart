import 'package:flutter/material.dart';
import 'package:mobileportfolio/main.dart' as Portfolio;

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
            ]),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('References'),
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
                leading: Icon(Icons.person),
                title: Text(
                  'Kujo Jotaro',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Senior Developer \oraora@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Giorno Giovanna',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Software Engineer \mudamuda@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Bruce Wayne',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Cyber Security Analyst \batman@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Naruto Uzumaki',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Front End Developer \sasuke@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Sasuke Uchiha',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Back End Developer\naruto@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Miles Morales',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'UX/UI Designer \milesmorales@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(color: Color(0xff25331e)),
            ],
          ),
        ),
      ),
    );
  }
}
