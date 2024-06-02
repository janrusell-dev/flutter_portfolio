import 'package:flutter/material.dart';
import 'package:mobileportfolio/main.dart' as Portfolio;

class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

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
          title: Text('Hobbies'),
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
                leading: Icon(Icons.fitness_center),
                title: Text(
                  'Exercise',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Exercise is my fulfilling hobby that boosts my physical fitness, mental well-being, and overall vitality.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff78ae5d)),
              ListTile(
                leading: Icon(Icons.dinner_dining),
                title: Text(
                  'Cooking',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Cooking has become my beloved hobby because it allows me to experiment with flavors, ingredients, and techniques.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.gamepad_sharp),
                title: Text(
                  'Gaming',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Gaming is my exhilarating hobby that offers immersive experiences, interactive storytelling, and opportunities for entertainment.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Coding',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'The ability to write lines of code and see them transform into functional programs or websites is incredibly rewarding.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Divider(color: Color(0xff25331e)),
              ListTile(
                leading: Icon(Icons.computer),
                title: Text(
                  'Watching Movies',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'It allows me to escape into different stories, experience a range of emotions, and appreciate the art of filmmaking.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
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
