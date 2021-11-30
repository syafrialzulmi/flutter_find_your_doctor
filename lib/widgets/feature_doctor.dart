import 'package:flutter/material.dart';
import '../widgets/feature_doctor_item.dart';
import '../widgets/label_header.dart';

class FeatureDoctor extends StatelessWidget {
  const FeatureDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          LabelHaeder('Feature Doctor'),
          Container(
            height: 150,
            margin: EdgeInsets.only(top: 30),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FeatureDoctorItem('dr. Martin', 'Rp. 15.000',
                    'https://picsum.photos/id/301/200/300'),
                FeatureDoctorItem('dr. Bambang', 'Rp. 13.000',
                    'https://picsum.photos/id/302/200/300'),
                FeatureDoctorItem('dr. Aisyah', 'Rp.25.000',
                    'https://picsum.photos/id/306/200/300'),
                FeatureDoctorItem('dr. Dahlan', 'Rp. 20.000',
                    'https://picsum.photos/id/304/200/300'),
                FeatureDoctorItem('dr. Eko', 'Rp. 18.000',
                    'https://picsum.photos/id/305/200/300')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
