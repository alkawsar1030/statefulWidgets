import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller1 = TextEditingController();
  double num1 = 0;
  double num2 = 0;
  double result = 0;

  void clearText() {
    controller.clear(); // এই লাইনটি TextField-এর লেখা মুছে দেবে
  }

  bool showResult = false; // প্রথমে টেক্সটটা লুকানো থাকবে

  void addNumbers() {
    setState(() {
      showResult = true; // বাটনে চাপলে টেক্সট দেখাবে
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My counterApp')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,

              onChanged: (value) {
                setState(() {
                  num1 = double.parse(value);
                });
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: controller1,
              onChanged: (value) {
                setState(() {
                  num2 = double.parse(value);
                });
              },
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                addNumbers();
                setState(() {
                 // showResult = true;
                  result = num1 + num2;
                  controller1.clear();
                  controller.clear();
                });
              },
              child: Text('Add these'),

            ),
            SizedBox(height: 10),

            if (showResult)
              Text('The Result is $result', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
