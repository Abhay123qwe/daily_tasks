import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:daily_tasks/utils/colors.dart';
import 'package:daily_tasks/utils/global.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  // ignore: unused_field
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: homeScreenItem),
      bottomNavigationBar: CurvedNavigationBar(
        height: kToolbarHeight,
        buttonBackgroundColor: seventh,
        backgroundColor: forth,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.people, size: 30),
          Icon(Icons.add, size: 30),
        ],
        // ignore: no_leading_underscores_for_local_identifiers
        onTap: (_page) {
          navigationTapped(_page);
          //Handle button tap
        },
      ),
    );
  }
}
