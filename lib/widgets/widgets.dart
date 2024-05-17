import 'package:flutter/material.dart';
import 'package:vazifa_18/pages/pages_4.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class YourAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 330,
            height: 400,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/ptichka.jpg",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your account has active",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Text(
                      "Congratulation you are succes to change\nyou profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ZoomTapAnimation(
                  child: Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue.shade900),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ManCodingPages(),
                            ),
                          );
                        },
                        child: const Text(
                          "OK",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
