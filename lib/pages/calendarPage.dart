import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homePage.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  Widget _buildLeadingButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("assets/icons/arrow.png"),
            ),
          ),
        ),
      ),
    );
  }

  final List<Widget> _appBarActions = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/icons/user2.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: _buildLeadingButton(context),
        actions: _appBarActions,
      ),
      body: const CalendarBody(),
    );
  }
}

class CalendarBody extends StatelessWidget {
  const CalendarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    Text(
                      "Mar",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Text(
                  "April",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("May", style: TextStyle(fontSize: 15)),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateButton(date: "4", day: "Sat", select: false),
                DateButton(date: "5", day: "Sun", select: true),
                DateButton(date: "6", day: "Mon", select: false),
                DateButton(date: "7", day: "Tue", select: false),
              ],
            ),
            Text(
              "Ongoing",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "9AM",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("10AM",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: CalendarButton(
                      icon: "girl",
                      text: "Information Architecture",
                      text2: "Saber & Oro",
                      date: "9.00 AM - 10.00 AM",
                      color1: Color(0xFFFFD29D),
                      color2: Color(0xFFFF9E2D),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("10AM",
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    Image(
                      image: AssetImage("assets/icons/buble.png"),
                      width: 20,
                      height: 20,
                    ),
                    Image(
                      image: AssetImage("assets/icons/divider.png"),
                      width: 250,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "11AM",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("12PM",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: CalendarButton(
                      text: "Software Testing",
                      text2: "Saber & Mike",
                      date: "11.00AM - 12.00 PM",
                      color1: Color(0xFFB1EEFF),
                      color2: Color(0xFF29BAE2),
                      icon: 'boy2',
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1PM",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("2PM",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                        child: CalendarButton(
                      icon: "boy3",
                      text: "Mobile App Design",
                      text2: "Saber & Fahim",
                      date: "1.00 AM - 2.00 AM",
                      color1: Color(0xFFFFA0BC),
                      color2: Color(0xFFFF1B5E),
                    )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DateButton extends StatelessWidget {
  final String date;
  final String day;
  final bool select;
  const DateButton(
      {super.key, required this.date, required this.day, required this.select});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:  [
            select ?  const Color(0xFF8B78FF) : Colors.white,
            select ?  const Color(0xFF5451D6) : Colors.white,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(43),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : Colors.black),
          ),
          Text(
            day,
            style: TextStyle(
                fontSize: 15, color: select ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

class CalendarButton extends StatelessWidget {
  final String text;
  final String text2;
  final String date;
  final Color color1;
  final Color color2;
  final String icon;

  const CalendarButton({
    super.key,
    required this.text,
    required this.text2,
    required this.date,
    this.color1 = const Color(0xFF8B78FF),
    this.color2 = const Color(0xFF5451D6),
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/icons/boy.png",
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Image.asset(
                          "assets/icons/$icon.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
