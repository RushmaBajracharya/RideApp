import 'package:flutter/material.dart';
import 'package:internship_task/screens/rideScreen/widgets/icon_widget.dart';
import 'package:internship_task/utils/styles/app_styles.dart';

class DriverInfo extends StatelessWidget {
  const DriverInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(30),
            //car icon
            child: const IconWidget(icon: Icons.person),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Driver Information",
                      style: Styles.subheading,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                            width: 315,
                            height: 80,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, right: 8.0, left: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const IconWidget(
                                          icon: Icons.local_taxi_rounded),
                                      Column(
                                        children: [
                                          Text('John Doe',
                                              style: Styles.boldnormaltext),
                                          Text(
                                            'Biratnagar',
                                            style: Styles.smallgreytext,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Image(
                                          image: AssetImage(
                                              'assets/images/call.png')),
                                      Text(
                                        'Call',
                                        style: Styles.biggreytext,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )))
                  ]))
        ]));
  }
}
