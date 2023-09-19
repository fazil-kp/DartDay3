import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool checkValue1 = false;
  bool checkValue2 = false;
  bool checkValue3 = false;
  bool checkValue4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text("Click Here"),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Check Box 1"),
                    Checkbox(
                      value: checkValue1,
                      onChanged: (v) {
                        setState(
                          () {
                            checkValue1 = v!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Check Box 2"),
                    Checkbox(
                      value: checkValue2,
                      onChanged: (v) {
                        setState(
                          () {
                            checkValue2 = v!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Check Box 3"),
                    Checkbox(
                      value: checkValue3,
                      onChanged: (v) {
                        setState(
                          () {
                            checkValue3 = v!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Check Box 4"),
                    Checkbox(
                      value: checkValue4,
                      onChanged: (v) {
                        setState(
                          () {
                            checkValue4 = v!;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
