import 'package:flutter/material.dart';

import 'counter_app.dart';

class ColourTextChanging extends StatefulWidget {
  const ColourTextChanging({Key? key}) : super(key: key);

  @override
  State<ColourTextChanging> createState() => _ColourTextChangingState();
}

class _ColourTextChangingState extends State<ColourTextChanging> {
  bool containerColor = false;
  bool showAlternativeText = false;
  bool textColour = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CounterApp()),
            );
            // Navigator.push(context,
            //   MaterialPageRoute(
            //     builder: (context) => CounterApp(),
            //   ),
            // );
          },
        ),
        title: const Text("Demo App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: containerColor ? Colors.green : Colors.red,
                ),
                width: 300,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          containerColor = !containerColor;
                        });
                      },
                      child: const Text("Color"),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showAlternativeText = !showAlternativeText;
                          textColour = !textColour;
                        });
                      },
                      child: const Text("Text"),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      showAlternativeText ? "Hello Fazil " : "Hello",
                      style: TextStyle(
                          fontSize: 16,
                          color: textColour ? Colors.blue : Colors.yellow),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
