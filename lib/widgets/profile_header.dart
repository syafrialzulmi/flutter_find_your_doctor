import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
            backgroundImage: AssetImage('assets/images/image_profile.jpg'),
          ),
        ),
      ],
    );
  }
}
