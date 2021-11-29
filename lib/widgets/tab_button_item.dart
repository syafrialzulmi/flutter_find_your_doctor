import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabButtonItem extends StatelessWidget {
  final String iconSvg;
  final Color startColor;
  final Color finishColor;

  TabButtonItem(this.iconSvg, this.startColor, this.finishColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 100,
      width: 90,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [startColor, finishColor]),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Positioned(
            right: -50,
            height: 100,
            width: 90,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 50,
            height: 100,
            width: 90,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              iconSvg,
            ),
          ),
        ],
      ),
    );
  }
}
