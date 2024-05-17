import 'package:flutter/material.dart';
import 'package:vazifa_18/pages/pages_2.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController agecontroller = TextEditingController();
  String? error;
  String age = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
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
                  "Let's Login to Connect your email",
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
                    controller: agecontroller,
                    decoration: InputDecoration(
                      hintText: "name@example.com",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
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
                          const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Forget your password?",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 10),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => RegistarPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sign up here",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 11),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
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
                      int n;
                      String box = agecontroller.text;
                      if (box.isEmpty) {
                        setState(() {
                          error = "Ma'lumot kiriting";
                          age = '';
                        });
                      } else {
                        try {
                          n = int.parse(box);
                          if (n < 0) {
                            setState(() {
                              error = "15 dan ko'proq";
                              age = '';
                            });
                          } else if (n > 25) {
                            setState(() {
                              error = '25 dan kichik son kiritin';
                              age = '';
                            });
                          } else {
                            setState(() {
                              error = null;
                              age = "${100 - n}";
                            });
                          }
                        } catch (e) {
                          setState(() {
                            age = '';
                            error = "email kriting";
                          });
                        }
                      }
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                ZoomTapAnimation(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromARGB(255, 248, 245, 245),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.apple,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const Text(
                            "Apple",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ZoomTapAnimation(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(255, 248, 245, 245)),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/googleicon.jpg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const Text(
                            "Google",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
            Row(
              children: [
                const SizedBox(
                  width: 90,
                ),
                Container(
                  width: 80,
                  height: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 80,
                  height: 1,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
