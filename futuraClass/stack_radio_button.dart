import 'package:flutter/material.dart';

class StackRadioButton extends StatefulWidget {
  const StackRadioButton({Key? key}) : super(key: key);

  @override
  _StackRadioButtonState createState() => _StackRadioButtonState();
}

class _StackRadioButtonState extends State<StackRadioButton> {
  int radioSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: 50,
              child: Text(
                "Click Here",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Positioned(
              top: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("RadioButton 1"),
                      Radio(
                        activeColor: Colors.red,
                        value: 1,
                        groupValue: radioSelect,
                        onChanged: (v) {
                          setState(() {
                            radioSelect = v!;
                          });
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("RadioButton 2"),
                        Radio(
                          value: 2,
                          groupValue: radioSelect,
                          onChanged: (v) {
                            setState(() {
                              radioSelect = v!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("RadioButton 3"),
                      Radio(
                        value: 3,
                        groupValue: radioSelect,
                        onChanged: (v) {
                          setState(() {
                            radioSelect = v!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("RadioButton 4"),
                      Radio(
                        value: 4,
                        groupValue: radioSelect,
                        onChanged: (v) {
                          setState(() {
                            radioSelect = v!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
