import 'package:flutter/material.dart';

class LiveDoctorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // height: 170,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              // height: 170,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_live_doctor_1.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: 35,
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 50,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.white,
                    ),
                    Text(
                      ' Live',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
