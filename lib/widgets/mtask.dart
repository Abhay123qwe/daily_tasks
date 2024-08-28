import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Mtask extends StatelessWidget {
  const Mtask({
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
          right: 15,
          left: 30,
          top: 10,
        ),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: secondry,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: forth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '09:00!09:30',
                  style: TextStyle(color: forth),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: secondry,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: forth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '09:00!09:30',
                  style: TextStyle(color: forth),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: secondry,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: forth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '09:00!09:30',
                  style: TextStyle(color: forth),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: secondry,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: forth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '09:00!09:30',
                  style: TextStyle(color: forth),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: secondry,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developers team weekly meeting via Zoom',
                  style: TextStyle(fontSize: 20, color: forth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '09:00!09:30',
                  style: TextStyle(color: forth),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
