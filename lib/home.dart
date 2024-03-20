import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  int _number = 0;

  void incrementCounter() {
    setState(() {
      _number++;
    });
  }

  void decrementCounter() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_number",
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Click the button to changes the number"),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: incrementCounter, child: const Text("Add")),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                    onPressed: decrementCounter, child: const Text("Less"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
