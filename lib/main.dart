import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:mobileportfolio/educational.dart';
import 'dart:convert';
import 'experties.dart';
import 'hobbies.dart';
import 'references.dart';
import 'experience.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const FavoritePage(),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FavoritePage(),
    SettingsPage(),
  ];

  void _onNavigationItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
          title: Text('Portfolio'),
          backgroundColor: Color(0xff25331e),
          elevation: 0,
        ),
        body: _pages[_currentIndex],
        drawer: const NavigationDrawer(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Color(0xff25331e),
          animationDuration: Duration(milliseconds: 300),
          onTap: _onNavigationItemTapped,
          items: [
            Icon(Icons.home, color: Colors.white),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Color(0xff25331e),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://avatarfiles.alphacoders.com/116/116531.jpg'),
                ),
                SizedBox(height: 15),
                Text(
                  'Jan Rusell G. Engracial',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xfff6f6f6),
                  ),
                ),
                Text(
                  'janrusell.engracial@chmsc.edu.ph',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffbaadad),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(10),
        child: Wrap(runSpacing: 10, children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Home()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Educational Background'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Educational()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text('Experience'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Experience()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.update_outlined),
            title: const Text('Expertise'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Expertise()),
              );
            },
          ),
          const Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined),
            title: const Text('Hobbies'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Hobbies()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('References'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const References()),
              );
            },
          ),
        ]),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'lib/images/image7.png',
                  height: 200,
                ),
              ),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff79976b),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                'Hi I am Jan Rusell G. Engracial,  a passionate Flutter developer. I specialize in creating cross-platform mobile applications with a focus on exceptional user experiences. I thrive on solving complex challenges and delivering scalable solutions. Allow us to collaborate and bring your app ideas to life!',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Favorites'),
                Tab(text: 'Feed'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FavoritePage(),
              FeedView(),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff40493f), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: 15),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width: 200,
                        height: 150,
                        child: Image.asset('lib/images/batman${index + 1}.png'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          ReelView(
            videoAssetPath: 'lib/videos/TLSD.mp4',
            thumbnailAssetPath: 'lib/images/NBSPLV.png',
          ),
        ],
      ),
    );
  }
}

class ReelView extends StatefulWidget {
  final String videoAssetPath;
  final String thumbnailAssetPath;

  const ReelView({
    Key? key,
    required this.videoAssetPath,
    required this.thumbnailAssetPath,
  }) : super(key: key);

  @override
  _ReelViewState createState() => _ReelViewState();
}

class _ReelViewState extends State<ReelView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool _showThumbnail = true;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoAssetPath);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      allowPlaybackSpeedChanging: false,
      allowedScreenSleep: false,
      showControls: true,
    );
    _videoPlayerController.addListener(_onVideoPlayerStateChanged);
  }

  void _onVideoPlayerStateChanged() {
    if (_videoPlayerController.value.isPlaying) {
      setState(() {
        _showThumbnail = false;
      });
    } else {
      setState(() {
        _showThumbnail = true;
      });
    }
  }

  @override
  void dispose() {
    _videoPlayerController.removeListener(_onVideoPlayerStateChanged);
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Stack(
        children: [
          Chewie(
            controller: _chewieController,
          ),
          Positioned.fill(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                  visible: _showThumbnail,
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      widget.thumbnailAssetPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Visibility(
                  visible: _showThumbnail,
                  child: Transform.scale(
                    scale: 0.6, // Adjust the scale as needed
                    child: Icon(
                      Icons.play_circle_fill,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeedView extends StatelessWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        if (index == 2) {
          return ReelView(
            videoAssetPath: 'default_video_asset_path.mp4',
            thumbnailAssetPath: 'default_thumbnail_asset_path.jpg',
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 150,
              height: 150,
              child: Image.asset('lib/images/image${index + 1}.png'),
            ),
          );
        }
      },
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final ValueNotifier<String> name = ValueNotifier<String>('');
  final ValueNotifier<String> email = ValueNotifier<String>('');
  final ValueNotifier<String> password = ValueNotifier<String>('');

  Future<void> insertRecord() async {
    if (name.value.isNotEmpty &&
        email.value.isNotEmpty &&
        password.value.isNotEmpty) {
      try {
        String uri = "http://10.0.2.2/ispfl8/insert_record.php";

        var res = await http.post(Uri.parse(uri), body: {
          "name": name.value,
          "email": email.value,
          "password": password.value,
        });

        var response = jsonDecode(res.body);
        if (response["success"] == true) {
          print("Record Inserted");
          name.value = '';
          email.value = '';
          password.value = '';
        } else {
          print("Some Issue");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Please Fill all Fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFFCE4EC)],
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: ValueListenableBuilder<String>(
                  valueListenable: name,
                  builder: (context, value, child) {
                    return TextFormField(
                      onChanged: (newValue) {
                        name.value = newValue;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Name',
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: ValueListenableBuilder<String>(
                  valueListenable: email,
                  builder: (context, value, child) {
                    return TextFormField(
                      onChanged: (newValue) {
                        email.value = newValue;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Email',
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: ValueListenableBuilder<String>(
                  valueListenable: password,
                  builder: (context, value, child) {
                    return TextFormField(
                      onChanged: (newValue) {
                        password.value = newValue;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  primary: Color(0xff25331e),
                ),
                onPressed: () {
                  insertRecord();
                },
                child: Text(
                  'Insert',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
