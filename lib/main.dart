import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/live_doctor.dart';
import '../widgets/profile_header.dart';
import '../widgets/search_doctor.dart';
import '../widgets/live_doctor_item.dart';
import '../widgets/tab_button_item.dart';

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
        scaffoldBackgroundColor: Colors.white,
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
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Popular Doctors',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'See all',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14,
                                    color: Color(0xff677294),
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_right,
                                    color: Color(0xff677294)),
                              ],
                            )
                          ],
                        ),
                        Container(
                            height: 250,
                            margin: EdgeInsets.only(top: 30),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                PopularDoctorItem(),
                                PopularDoctorItem(),
                                PopularDoctorItem(),
                                PopularDoctorItem()
                              ],
                            )),
                      ],
                    ),
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

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      width: 190,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          child: Image.network(
            'https://picsum.photos/id/100/200/300',
            fit: BoxFit.cover,
          ),
          footer: Container(
            padding: EdgeInsets.only(
              top: 10,
            ),
            color: Colors.white,
            height: 80,
            child: GridTileBar(
              title: Column(
                children: <Widget>[
                  Text(
                    'Dr. Fillerup Grab',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    'Medicine Specialist',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: Color(0xff677294),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffE2E5EA),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
