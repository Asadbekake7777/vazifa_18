import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ManCodingPages extends StatefulWidget {
  @override
  State<ManCodingPages> createState() => _ManCodingPagesState();
}

class _ManCodingPagesState extends State<ManCodingPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 23, 21, 21),
                      Color.fromARGB(255, 36, 32, 32)
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Mancoding",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Let's schedule your activities",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_alert,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Schedule",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Let's schedule your activities",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(29)),
                            color: Color.fromARGB(115, 238, 233, 233),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.apps_rounded,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.view_list_rounded,
                                  color: Colors.blue.shade700,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/calendarimages.jpg"),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 60,
                  width: 340,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 246, 243, 243)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            ZoomTapAnimation(
                              child: Container(
                                height: 58,
                                width: 164,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 36, 66, 90)),
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "All",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ZoomTapAnimation(
                              child: Container(
                                height: 58,
                                width: 164,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 123, 161, 199)),
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "New",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/bootmnavigationbar.jpg")
            ],
          ),
        ],
      ),
    );
  }
}
