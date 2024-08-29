import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DashbordTopOption extends StatefulWidget {
  const DashbordTopOption({super.key});

  @override
  State<DashbordTopOption> createState() => _DashbordTopOptionState();
}

class _DashbordTopOptionState extends State<DashbordTopOption> {
  bool design = true;
  bool developers = false;
  bool gamers = false;
  bool fishing = false;

  @override
  void initState() {
    super.initState();
    design = design;
    developers = developers;
    gamers = gamers;
    fishing = fishing;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            design
                ? Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(25),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: sixth,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Design Club",
                          style: TextStyle(fontSize: 17, color: fifth),
                        )),
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: eleven,
                        padding: const EdgeInsets.symmetric(horizontal: 30)),
                    onPressed: () {
                      setState(() {
                        design = true;
                        developers = false;
                        gamers = false;
                        fishing = false;
                      });
                    },
                    child: const Text(
                      "Design Club",
                      style: TextStyle(fontSize: 17, color: third),
                    )),
            const SizedBox(
              width: 20,
            ),
            developers
                ? Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(25),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: sixth,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Developers",
                          style: TextStyle(fontSize: 17, color: fifth),
                        )),
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: eleven,
                        padding: const EdgeInsets.symmetric(horizontal: 30)),
                    onPressed: () {
                      setState(() {
                        design = false;
                        developers = true;
                        gamers = false;
                        fishing = false;
                      });
                    },
                    child: const Text(
                      "Developers",
                      style: TextStyle(fontSize: 17, color: third),
                    )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            gamers
                ? Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(25),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: sixth,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Gamer",
                          style: TextStyle(fontSize: 17, color: fifth),
                        )),
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: eleven,
                        padding: const EdgeInsets.symmetric(horizontal: 30)),
                    onPressed: () {
                      setState(() {
                        design = false;
                        developers = false;
                        gamers = true;
                        fishing = false;
                      });
                    },
                    child: const Text(
                      "Gamer",
                      style: TextStyle(fontSize: 17, color: third),
                    )),
            const SizedBox(
              width: 20,
            ),
            fishing
                ? Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(25),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: sixth,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Fishing",
                          style: TextStyle(fontSize: 17, color: fifth),
                        )),
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: eleven,
                        padding: const EdgeInsets.symmetric(horizontal: 30)),
                    onPressed: () {
                      setState(() {
                        design = false;
                        developers = false;
                        gamers = false;
                        fishing = true;
                      });
                    },
                    child: const Text(
                      "Fishing",
                      style: TextStyle(fontSize: 17, color: third),
                    )),
          ],
        )
      ],
    );
  }
}
