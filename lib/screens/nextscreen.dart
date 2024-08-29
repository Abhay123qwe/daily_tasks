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
        appBar: AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous screen.
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ), // Replace with your desired icon.
      ),
    ));
  }
}
