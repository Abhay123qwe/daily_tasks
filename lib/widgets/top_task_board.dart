import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../utils/colors.dart';

class TopTaskBoard extends StatelessWidget {
  const TopTaskBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: eleven,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
                  "Top Tasks board",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Finalize Venue for festival",
                                style: TextStyle(
                                    color: fifth, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Aug 14, 2024",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          CircularPercentIndicator(radius: 20)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marketing Plans Drafting",
                            style: TextStyle(
                                color: fifth, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Aug 14, 2024",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      CircularPercentIndicator(radius: 20)
                    ],
                  ),
                ),
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
