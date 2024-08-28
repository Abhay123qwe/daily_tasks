import 'package:daily_tasks/utils/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool design = true;
  bool study = false;
  bool development = false;
  @override
  void initState() {
    super.initState();
    design = design;
    study = study;
    development = development;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
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
                            "Design",
                            style: TextStyle(fontSize: 17, color: seventh),
                          )),
                    )
                  : TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: eleven,
                          padding: const EdgeInsets.symmetric(horizontal: 30)),
                      onPressed: () {
                        setState(() {
                          design = true;
                          study = false;
                          development = false;
                        });
                      },
                      child: const Text(
                        "Design",
                        style: TextStyle(fontSize: 17, color: third),
                      )),
              const SizedBox(
                width: 20,
              ),
              study
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
                            "Study",
                            style: TextStyle(fontSize: 17, color: seventh),
                          )),
                    )
                  : TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: eleven,
                          padding: const EdgeInsets.symmetric(horizontal: 30)),
                      onPressed: () {
                        setState(() {
                          design = false;
                          study = true;
                          development = false;
                        });
                      },
                      child: const Text(
                        "Study",
                        style: TextStyle(fontSize: 17, color: third),
                      )),
              const SizedBox(
                width: 15,
              ),
              development
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
                            "Development",
                            style: TextStyle(fontSize: 17, color: seventh),
                          )),
                    )
                  : TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: eleven,
                          padding: const EdgeInsets.symmetric(horizontal: 30)),
                      onPressed: () {
                        setState(() {
                          design = false;
                          study = false;
                          development = true;
                        });
                      },
                      child: const Text(
                        "Development",
                        style: TextStyle(fontSize: 17, color: third),
                      )),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
