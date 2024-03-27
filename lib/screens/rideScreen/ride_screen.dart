import 'package:flutter/material.dart';
import 'package:internship_task/screens/rideScreen/widgets/dest_info.dart';
import 'package:internship_task/screens/rideScreen/widgets/driver_info.dart';
import 'package:internship_task/screens/rideScreen/widgets/ride_info.dart';
import 'package:internship_task/utils/styles/app_styles.dart';
import 'package:internship_task/utils/mediaquery.dart';

class RideScreen extends StatelessWidget {
  const RideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //to manage screen size
    final screenSize = getScreenSize(context);
    final screenHeight = screenSize.size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Styles.bgColor,
            appBar: AppBar(
              toolbarHeight: screenHeight * 0.08,
              leading: const Icon(Icons.arrow_back_ios_rounded),
              title: const Text(
                "My Ride",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You can now track your ride.",
                          style: Styles.biggreytext,
                        ),

                        const SizedBox(height: 15.0),
                        //Destination Detail
                        const DestInfo(),
                        //Ride information
                        const RideInfo(),
                        //Driver Information
                        const DriverInfo(),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Styles.orange,
                            ),
                            width: double.infinity,
                            height: 60,
                            child: const Center(
                              child: Text(
                                'View in Map',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            )),
                      ])),
            )));
  }
}
