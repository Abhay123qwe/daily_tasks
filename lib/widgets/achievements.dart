import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../utils/colors.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: eleven,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 210,
            width: 320,
            decoration: BoxDecoration(
                color: sixth, borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Achievements",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(radius: 50),
                    const SizedBox(
                      width: 50,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "37%",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: seventh,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Completed",
                              style: TextStyle(color: tenth),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: third,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "On Going",
                              style: TextStyle(color: tenth),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          width: 320,
          decoration: const BoxDecoration(
              color: eleven,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: TextButton(
              onPressed: () {}, child: const Text("Show more detail")),
        )
      ],
    );
  }
}
