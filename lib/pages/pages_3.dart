import 'package:flutter/material.dart';
import 'package:vazifa_18/widgets/widgets.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FirstConfirmPage extends StatefulWidget {
  @override
  State<FirstConfirmPage> createState() => _FirstConfirmPageState();
}

class _FirstConfirmPageState extends State<FirstConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 205, 205),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 205, 205),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Confirm your phone number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Check your message, becau we send you a code\nfor Verification",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                YourAccount(),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ZoomTapAnimation(
              child: Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.blue.shade900),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "By continuing, you agree to Loana's",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of Use",
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "&",
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
