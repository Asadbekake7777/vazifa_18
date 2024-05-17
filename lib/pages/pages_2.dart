import 'package:flutter/material.dart';
import 'package:vazifa_18/pages/pages_3.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class RegistarPage extends StatefulWidget {
  @override
  State<RegistarPage> createState() => _RegistarPageState();
}

class _RegistarPageState extends State<RegistarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Create your account for your schedule",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Your name",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 25,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          size: 25,
                          color: Colors.grey,
                        ),
                        hintText: "Your email",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "password",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.grey,
                          size: 25,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: const Icon(
                          Icons.key,
                          size: 25,
                          color: Colors.grey,
                        ),
                        hintText: "password",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "You have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 10),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign in here",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 11),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FirstConfirmPage()),
                      );
                    },
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
