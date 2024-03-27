import 'package:flutter/material.dart';
import 'package:internship_task/screens/rideScreen/widgets/dotted_vertical_line.dart';
import 'package:internship_task/screens/rideScreen/widgets/icon_widget.dart';
import 'package:internship_task/utils/styles/app_styles.dart';

class DestInfo extends StatelessWidget {
  const DestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  elevation: 1,
                  borderRadius: BorderRadius.circular(30),
                  //location icon
                  child: const IconWidget(icon: Icons.location_on_outlined),
                ),
                const SizedBox(
                  height: 170,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Destination Details",
                    style: Styles.subheading,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '25th March 2024, 10:00 am',
                              style: Styles.smallgreytext,
                            ),
                            const Divider(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Styles.orange,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const DottedVerticalLine(
                                      height: 50,
                                      color: Colors.grey,
                                      strokeWidth: 2.0,
                                      gap: 3.0,
                                      dashLength: 2.0,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Airport, Biratnagar, Morang, Nepal',
                                    style: Styles.normaltext,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                    radius: 6, backgroundColor: Colors.grey),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    'Damak-5, Yalambar Chowk jhapa, Nepal',
                                    style: Styles.normaltext,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Destination detail end
        ],
      ),
    );
  }
}
