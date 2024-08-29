import 'package:daily_tasks/utils/colors.dart';
import 'package:daily_tasks/widgets/agendas.dart';
import 'package:daily_tasks/widgets/dashbord_top_option.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: forth,
      padding: const EdgeInsets.only(left: 30),
      child: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            DashbordTopOption(),
            SizedBox(
              height: 30,
            ),
            Agendas()
          ],
        ),
      ),
    );
  }
}
