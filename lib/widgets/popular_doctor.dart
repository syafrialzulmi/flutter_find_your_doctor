import 'package:flutter/material.dart';
import '../widgets/popular_doctor_item.dart';

class PopularDoctor extends StatelessWidget {
  const PopularDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Icon(Icons.keyboard_arrow_right, color: Color(0xff677294)),
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
                  PopularDoctorItem(
                      'dr. Martina Yulianti, Sp PD FINASIM',
                      'Spesialis Penyakit Dalam',
                      'https://picsum.photos/id/201/200/300'),
                  PopularDoctorItem('dr. Bambang Surif, Sp A', 'Spesialis Anak',
                      'https://picsum.photos/id/202/200/300'),
                  PopularDoctorItem(
                      'dr. Muhammad, Sp B, M. Si Med',
                      'Spesialis Onkologi',
                      'https://picsum.photos/id/203/200/300'),
                  PopularDoctorItem(
                      'dr. Aisyah Radiallah, Sp. OG',
                      'Spesialis Obsgyn',
                      'https://picsum.photos/id/204/200/300')
                ],
              )),
        ],
      ),
    );
  }
}
