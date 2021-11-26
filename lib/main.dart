import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/live_doctor_item.dart';

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
                color: Colors.amber,
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
                    height: MediaQuery.of(context).padding.top,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hi Handwerker!',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Find Your Doctor',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/image_profile.jpg'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.close),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Live Doctors',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 170,
                          child:
                              // ListView.builder(
                              //   scrollDirection: Axis.horizontal,
                              //   itemBuilder: (context, index) {
                              //     return Card(
                              //       child: Padding(
                              //         padding: const EdgeInsets.all(15.0),
                              //         child: Text(liveDoctor[index],
                              //             style: TextStyle(fontSize: 30)),
                              //       ),
                              //     );
                              //   },
                              //   itemCount: liveDoctor.length,
                              // ),

                              ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return LiveDoctorItem(liveDoctor[index]);
                            },
                            itemCount: liveDoctor.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
