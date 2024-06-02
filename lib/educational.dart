import 'package:flutter/material.dart';
import 'package:mobileportfolio/main.dart' as Portfolio;

class Educational extends StatelessWidget {
  const Educational({Key? key}) : super(key: key);

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
          title: Text('Educational Background'),
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
                leading: Icon(Icons.school),
                title: Text(
                  'Primary School - Dominador Oking Jison Memorial Elementary School',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'School Year: 2008-2013',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(
                  'Secondary School - Doña Montserrat Lopez Memorial High School',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'School Year: 2013-2016',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(
                  'Senior High School - Doña Montserrat Lopez Memorial High School',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Track: Computer System Servicing',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(
                  'Tertiary - Carlos Hilado Memorial State University',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Bachelor of Science in Information System (BSIS)',
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
