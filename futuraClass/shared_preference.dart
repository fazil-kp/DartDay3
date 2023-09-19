import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'counter_app.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  final textController = TextEditingController();
  bool dataSaved = false;

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: textController,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text(dataSaved? "Value Saved" : "Save Value"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future saveDataToStorage() async{
    final sharedprf = await SharedPreferences.getInstance();
    await sharedprf.setString("save_value", textController.text);

  }

  Future getSavedData(BuildContext context) async{
    final sharedprf = await SharedPreferences.getInstance();
    final savedValue = sharedprf.getString("save_value");
    if(savedValue !=null){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CounterApp()));
    }
  }
}
