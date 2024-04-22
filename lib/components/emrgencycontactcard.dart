import 'package:bsafe/components/policeemergency.dart';
import 'package:bsafe/components/womesafetyemergencycard.dart';
import 'package:flutter/cupertino.dart';

import 'ambulanceemergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
         PoliceEmergency(),
          AmbulanceEmergency(),
          womenhelpline(),

        ],
      ),
    );
  }
}