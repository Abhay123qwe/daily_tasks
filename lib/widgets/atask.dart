import 'package:daily_tasks/utils/colors.dart';
import 'package:flutter/material.dart';

class Atask extends StatelessWidget {
  const Atask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          top: 20,
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: sixth,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, spreadRadius: 5, color: forth)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2.5),
                        decoration: BoxDecoration(
                            color: eight,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Design",
                          style: TextStyle(color: seventh),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 2.5),
                          decoration: BoxDecoration(
                              color: eleven,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            "Development",
                            style: TextStyle(color: tenth),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Developers team weekly meeting via Zoom',
                    style: TextStyle(fontSize: 20, color: fifth),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '09:00!09:30',
                    style: TextStyle(color: third),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: sixth,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, spreadRadius: 5, color: forth)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 2.5),
                      decoration: BoxDecoration(
                          color: eight,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Design",
                        style: TextStyle(color: seventh),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2.5),
                        decoration: BoxDecoration(
                            color: eleven,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Development",
                          style: TextStyle(color: tenth),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: fifth),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '09:00!09:30',
                  style: TextStyle(color: third),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
