import 'package:flutter/material.dart';

class PopularDoctorItem extends StatelessWidget {
  final String nameDoctor;
  final String specialDoctor;
  final String imageProfilePopular;

  PopularDoctorItem(
      this.nameDoctor, this.specialDoctor, this.imageProfilePopular);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      width: 180,
      margin: EdgeInsets.only(right: 15),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          child: Image.network(
            imageProfilePopular,
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
                    nameDoctor,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    specialDoctor,
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
