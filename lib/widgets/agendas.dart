import 'package:daily_tasks/utils/colors.dart';
import 'package:daily_tasks/screens/nextscreen.dart';
import 'package:flutter/material.dart';

class Agendas extends StatelessWidget {
  const Agendas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Agenda',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Nextscreen()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 320,
                      width: 320,
                      decoration: BoxDecoration(
                          color: secondry,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Positioned(
                        top: -5,
                        left: -5,
                        right: -5,
                        child: Image.asset(
                          "assets/shiva.png",
                          scale: 2,
                        )),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        height: 150,
                        width: 320,
                        decoration: BoxDecoration(
                            color: sixth,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Internal Project: Ui Review & Discussion",
                              style: TextStyle(
                                  color: fifth,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '09:00!09:30',
                              style: TextStyle(color: third),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        color: secondry,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Positioned(
                      top: -5,
                      left: -5,
                      right: -5,
                      child: Image.asset(
                        "assets/shiva.png",
                        scale: 2,
                      )),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      height: 150,
                      width: 320,
                      decoration: BoxDecoration(
                          color: sixth,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Internal Project: Ui Review & Discussion",
                            style: TextStyle(
                                color: fifth,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '09:00!09:30',
                            style: TextStyle(color: third),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
