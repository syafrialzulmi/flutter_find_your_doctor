import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/live_doctor.dart';
import '../widgets/profile_header.dart';
import '../widgets/search_doctor.dart';
import '../widgets/tab_button_item.dart';
import '../widgets/popular_doctor.dart';
import '../widgets/feature_doctor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Find your Doctor",
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final liveDoctor = List<String>.generate(
        5, (index) => "https://picsum.photos/id/${index + 100}/200/300");

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.auto_stories),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.comment),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).padding.top + 156,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff0EBE7E), Color(0xff07D9AD)]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 10,
                  ),
                  ProfileHeader(),
                  SizedBox(
                    height: 30,
                  ),
                  SearchDoctor(),
                  LiveDoctor(liveDoctor: liveDoctor),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        TabButtonItem('assets/icons/icon_1.svg',
                            Color(0xff2753F3), Color(0xff765AFC)),
                        TabButtonItem('assets/icons/icon_2.svg',
                            Color(0xff0EBE7E), Color(0xff07D9AD)),
                        TabButtonItem('assets/icons/icon_3.svg',
                            Color(0xffFE7F44), Color(0xffFFCF68)),
                        TabButtonItem('assets/icons/icon_4.svg',
                            Color(0xffFF484C), Color(0xffFF6C60)),
                      ],
                    ),
                  ),
                  PopularDoctor(),
                  FeatureDoctor(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
