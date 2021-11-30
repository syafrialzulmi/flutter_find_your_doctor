import 'package:flutter/material.dart';

class LabelHaeder extends StatelessWidget {
  final String nameLabel;

  LabelHaeder(this.nameLabel);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          nameLabel,
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
    );
  }
}
