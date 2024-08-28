// ignore_for_file: prefer_final_fields

import 'package:daily_tasks/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/atask.dart';
import '../widgets/mtask.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool cistrue = true;
  bool mistrue = true;
  bool aisfalse = false;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    cistrue = cistrue;
    mistrue = mistrue;
    aisfalse = aisfalse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: forth,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    cistrue
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                cistrue = false;
                                mistrue = false;
                                aisfalse = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(top: 30),
                              color: primary,
                              child: TableCalendar(
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: _focusedDay,
                                startingDayOfWeek: StartingDayOfWeek.monday,
                                calendarFormat: CalendarFormat.month,
                                availableGestures: AvailableGestures.none,
                                daysOfWeekStyle: const DaysOfWeekStyle(
                                    weekdayStyle: TextStyle(color: third),
                                    weekendStyle: TextStyle(color: third)),
                                headerStyle: const HeaderStyle(
                                  leftChevronMargin: EdgeInsets.all(0),
                                  leftChevronIcon:
                                      Icon(null), // Remove the left arrow
                                  rightChevronIcon:
                                      Icon(null), // Remove the right arrow

                                  formatButtonVisible: false,
                                ),
                                calendarStyle: const CalendarStyle(
                                  defaultTextStyle: TextStyle(color: forth),
                                  weekendTextStyle: TextStyle(color: forth),
                                  selectedDecoration: BoxDecoration(
                                    color: forth,
                                    shape: BoxShape.circle,
                                  ),
                                  selectedTextStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                selectedDayPredicate: (day) {
                                  return isSameDay(_selectedDay, day);
                                },
                                calendarBuilders: CalendarBuilders(
                                  headerTitleBuilder: (context, day) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          DateFormat.MMMM()
                                              .format(day), // Display month
                                          style: const TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: forth),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onVerticalDragDown: (details) {},
                            onTap: () {
                              setState(() {
                                cistrue = true;
                                mistrue = true;
                                aisfalse = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(top: 30),
                              color: primary,
                              child: TableCalendar(
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: _focusedDay,
                                startingDayOfWeek: StartingDayOfWeek.monday,
                                calendarFormat: CalendarFormat.week,
                                availableGestures: AvailableGestures.all,
                                daysOfWeekStyle: const DaysOfWeekStyle(
                                    weekdayStyle: TextStyle(color: third),
                                    weekendStyle: TextStyle(color: third)),
                                headerStyle: const HeaderStyle(
                                  leftChevronMargin: EdgeInsets.all(0),

                                  leftChevronIcon:
                                      Icon(null), // Remove the left arrow
                                  rightChevronIcon:
                                      Icon(null), // Remove the right arrow

                                  formatButtonVisible: false,
                                ),
                                calendarStyle: const CalendarStyle(
                                  defaultTextStyle: TextStyle(color: forth),
                                  weekendTextStyle: TextStyle(color: forth),
                                  selectedDecoration: BoxDecoration(
                                    color: forth,
                                    shape: BoxShape.circle,
                                  ),
                                  selectedTextStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                selectedDayPredicate: (day) {
                                  return isSameDay(_selectedDay, day);
                                },
                                calendarBuilders: CalendarBuilders(
                                  headerTitleBuilder: (context, day) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          DateFormat.MMMM()
                                              .format(day), // Display month
                                          style: const TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: forth),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                    Container(
                      color: primary,
                      child: mistrue
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  mistrue = false;
                                  cistrue = false;
                                  aisfalse = false;
                                });
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: secondry,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Missed Tasks',
                                            style: TextStyle(
                                                fontSize: 30, color: forth),
                                          ),
                                          Icon(
                                            Icons.arrow_downward,
                                            color: forth,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  mistrue = true;
                                  cistrue = false;
                                  aisfalse = true;
                                });
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: secondry,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Missed Tasks',
                                            style: TextStyle(
                                                fontSize: 30, color: forth),
                                          ),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: forth,
                                          )
                                        ],
                                      ),
                                      Mtask()
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ),
                    Container(
                      color: secondry,
                      child: Column(
                        children: [
                          aisfalse
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      aisfalse = false;
                                      cistrue = true;
                                      mistrue = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: forth,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 15),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Active Tasks',
                                                style: TextStyle(
                                                    fontSize: 30, color: fifth),
                                              ),
                                              Icon(
                                                Icons.arrow_upward,
                                                color: fifth,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      aisfalse = true;
                                      cistrue = false;
                                      mistrue = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: forth,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 15),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Active Tasks',
                                                style: TextStyle(
                                                    fontSize: 30, color: fifth),
                                              ),
                                              Icon(
                                                Icons.arrow_downward,
                                                color: fifth,
                                              )
                                            ],
                                          ),
                                          Atask()
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
