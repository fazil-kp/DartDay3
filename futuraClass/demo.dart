import 'package:counterapp/futuraClass/counter_app.dart';
import 'package:flutter/material.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  bool containerColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const CounterApp()),
            );
          },
        ),
        title: const Text("Demo App"),
        centerTitle: true,
      ),
      body: Container(
        width: 200,
        height: 200,
        color: containerColor ? Colors.red : Colors.green,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
          margin: const EdgeInsets.all(20),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    if (containerColor == true) {
                      containerColor = false;
                    } else {
                      containerColor = true;
                    }
                  },
                );
              },
              child: const Text("Change"),
            ),
          ),
        ),
      ),
    );
  }
}
