import 'package:daily_tasks/utils/colors.dart';
import 'package:daily_tasks/widgets/achievements.dart';
import 'package:daily_tasks/widgets/top_task_board.dart';
import 'package:flutter/material.dart';

class Nextscreen extends StatefulWidget {
  const Nextscreen({super.key});

  @override
  State<Nextscreen> createState() => _NextscreenState();
}

class _NextscreenState extends State<Nextscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: const Color.fromARGB(255, 120, 118, 118),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.close,
          color: sixth,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              secondry,
              forth,
              forth,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 320,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    Positioned(
                        top: -30,
                        left: -5,
                        right: -5,
                        child: Image.asset(
                          "assets/shiva.png",
                          scale: 1,
                        )),
                    Positioned(
                      bottom: 0,
                      left: 40,
                      right: 40,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        height: 130,
                        width: 320,
                        decoration: BoxDecoration(
                            color: sixth,
                            borderRadius: BorderRadius.circular(25)),
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const Column(
                    children: [
                      Achievements(),
                      SizedBox(
                        height: 20,
                      ),
                      TopTaskBoard()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
