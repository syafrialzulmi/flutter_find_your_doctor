import 'package:flutter/material.dart';

class FeatureDoctorItem extends StatelessWidget {
  final String nameNickDoctor;
  final String tarifDoctor;
  final String imageProfileDoctor;

  FeatureDoctorItem(
      this.nameNickDoctor, this.tarifDoctor, this.imageProfileDoctor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Text(
                        ' 3,7',
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageProfileDoctor),
              backgroundColor: Colors.transparent,
            ),
            Column(
              children: <Widget>[
                Text(
                  nameNickDoctor,
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff333333),
                  ),
                  maxLines: 1,
                ),
                Text(
                  '${tarifDoctor} /jam',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff333333),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
