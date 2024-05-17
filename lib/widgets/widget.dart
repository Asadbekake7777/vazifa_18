import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController agecontroller = TextEditingController();
  String? error;
  String age = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dars"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: agecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: const Text(
                        "Input age",
                        style: TextStyle(fontSize: 20),
                      ),
                      border: const OutlineInputBorder(),
                      errorText: error),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
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
                            error = '0 dan katta son kiritin';
                            age = '';
                          });
                        } else if (n > 99) {
                          setState(() {
                            error = '100 dan kichik son kiritin';
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
                          error = "Raqam kriting";
                        });
                      }
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: const Text(
                    "Enter",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  age,
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
