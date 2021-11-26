import 'package:flutter/material.dart';
import '../widgets/live_doctor_item.dart';

class LiveDoctor extends StatelessWidget {
  const LiveDoctor({
    Key? key,
    required this.liveDoctor,
  }) : super(key: key);

  final List<String> liveDoctor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return LiveDoctorItem(liveDoctor[index]);
              },
              itemCount: liveDoctor.length,
            ),
          ),
        ],
      ),
    );
  }
}
