import 'package:daily_tasks/responsive/mobile_screen.dart';

import 'package:daily_tasks/utils/colors.dart';
import 'package:daily_tasks/widgets/categories.dart';
import 'package:daily_tasks/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  bool today = true;
  bool tomorrow = false;
  bool custom = false;

  @override
  void initState() {
    super.initState();
    today = today;
    tomorrow = tomorrow;
    custom = custom;
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return SafeArea(
      child: Container(
        color: forth,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add a Task',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const MobileScreen()));
                      },
                      icon: const Icon(
                        Icons.check,
                        size: 35,
                        color: seventh,
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldInput(
                  textEditingController: textController,
                  hinttext: "Task name",
                  textInputType: TextInputType.text),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Due to',
                style: TextStyle(color: third),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  today
                      ? Column(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Today",
                                  style: TextStyle(fontSize: 20, color: fifth),
                                )),
                            Container(
                              width: 50,
                              height: 3,
                              color: seventh,
                            ),
                          ],
                        )
                      : TextButton(
                          onPressed: () {
                            setState(() {
                              today = true;
                              tomorrow = false;
                              custom = false;
                            });
                          },
                          child: const Text(
                            "Today",
                            style: TextStyle(fontSize: 20, color: third),
                          )),
                  tomorrow
                      ? Column(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Tomorrow",
                                  style: TextStyle(fontSize: 20, color: fifth),
                                )),
                            Container(
                              width: 80,
                              height: 3,
                              color: seventh,
                            )
                          ],
                        )
                      : TextButton(
                          onPressed: () {
                            setState(() {
                              today = false;
                              tomorrow = true;
                              custom = false;
                            });
                          },
                          child: const Text(
                            "Tomorrow",
                            style: TextStyle(fontSize: 20, color: third),
                          )),
                  custom
                      ? Column(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Custom",
                                  style: TextStyle(fontSize: 20, color: fifth),
                                )),
                            Container(
                              width: 65,
                              height: 3,
                              color: seventh,
                            )
                          ],
                        )
                      : TextButton(
                          onPressed: () {
                            setState(() {
                              today = false;
                              tomorrow = false;
                              custom = true;
                            });
                          },
                          child: const Text(
                            "Custom",
                            style: TextStyle(fontSize: 20, color: third),
                          ))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Categories',
                style: TextStyle(color: third),
              ),
              const Categories()
            ],
          ),
        ),
      ),
    );
  }
}
