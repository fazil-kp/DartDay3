import 'package:counterapp/futuraClass/demo.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  counterFunction() {
    setState(
      () {
        counter++;
      },
    );
  }

  decrementFunction() {
    setState(
      () {
        counter--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const DemoApp(),
              ),
            );
          },
        ),
        title: const Text("Counter App"),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Counter App",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$counter",
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              tooltip: "Click Here",
              child: const Icon(Icons.remove),
              onPressed: () {
                decrementFunction();
              },
            ),
          ),
          Positioned(
            bottom: 100.0,
            right: 16.0,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              tooltip: "Click Here",
              child: const Icon(Icons.add),
              onPressed: () {
                counterFunction();
              },
            ),
          ),
        ],
      ),
    );
  }
}
