import 'package:flutter/material.dart';
import 'package:internship_task/screens/rideScreen/widgets/icon_widget.dart';
import 'package:internship_task/utils/styles/app_styles.dart';

class RideInfo extends StatelessWidget {
  const RideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(30),
                //car icon
                child: const IconWidget(icon: Icons.local_taxi_rounded),
              ),
              const SizedBox(
                height: 190,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 3,
                  indent: 10,
                  endIndent: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Ride Information",
                  style: Styles.subheading,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 315,
                    height: 180,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/standard.png')),
                                  Text(
                                    "Scorpio",
                                    style: Styles.smallgreytext,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "BA 2 PA 007",
                                    style: Styles.boldnormaltext,
                                  ),
                                  Text(
                                    'RS 200',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Styles.orange,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    "3 km away",
                                    style: Styles.smallgreytext,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      IconWidget(
                                          icon: Icons.wifi_tethering_outlined),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [Text('4'), Text('wheeler')],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      IconWidget(icon: Icons.person),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [Text('4'), Text('person')],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
