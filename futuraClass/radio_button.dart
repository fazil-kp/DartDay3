import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {

  int radioSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(" Click Here"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("RadioButton 1"),
                Radio(
                  activeColor: Colors.red,
                  value: 1,
                  groupValue: radioSelect,
                  onChanged: (v) {
                    setState(
                      () {
                        radioSelect = v!;
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("RadioButton 2"),
                Radio(
                  value: 2,
                  groupValue: radioSelect,
                  onChanged: (v) {
                    setState(
                      () {
                        radioSelect = v!;
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("RadioButton 3"),
                Radio(
                  value: 3,
                  groupValue: radioSelect,
                  onChanged: (v) {
                    setState(
                      () {
                        radioSelect = v!;
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("RadioButton 4"),
                Radio(
                  value: 4,
                  groupValue: radioSelect,
                  onChanged: (v) {
                    setState(
                      () {
                        radioSelect = v!;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
