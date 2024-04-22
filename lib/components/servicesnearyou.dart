import 'package:bsafe/components/services/PoliceStationCard.dart';
import 'package:bsafe/components/services/busstopservices.dart';
import 'package:bsafe/components/services/hospitalservices.dart';
import 'package:bsafe/components/services/metroservices.dart';
import 'package:bsafe/components/services/pharmacyservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';


class servicesnearyou extends StatelessWidget {
  const servicesnearyou({Key? key}) : super(key: key);


  static Future<void> openMap(String location) async {
    String googleUrl = 'https://www.google.com/maps/search/$location';
    try {
      final Uri _url = Uri.parse(googleUrl); // Corrected URI construction
      await launch(_url.toString()); // Use launch instead of launchUrl
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceStationCard(onMapFunction: openMap),
          HospitalCard(onMapFunction: openMap),
          PharmacyCard(onMapFunction: openMap),
          BusStationCard(onMapFunction: openMap),
          MetroCard(onMapFunction: openMap),
        ],
      ),
    );
  }
}
