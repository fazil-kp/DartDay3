import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SirSharedPref extends StatefulWidget {
  const SirSharedPref({Key? key}) : super(key: key);

  @override
  SirSharedPrefState createState() => SirSharedPrefState();
}

class SirSharedPrefState extends State<SirSharedPref> {
  final  textControllerName = TextEditingController();
  final  textControllerPassword = TextEditingController();

  bool isPasswordValid = true;
  bool isPasswordVisible = false;

  Future saveData(String name, String password) async {
    if (isPasswordIsValid(password)) {
      final sharedPref = await SharedPreferences.getInstance();
      await sharedPref.setString('Name', name);
      await sharedPref.setString("Password", password);
      isPasswordValid = true;
    } else {
      isPasswordValid = false;
    }
  }

  Future<Map<String, String?>> getData() async {
    final sharedPref = await SharedPreferences.getInstance();
    String? name = sharedPref.getString('Name');
    String? password = sharedPref.getString('Password');
    return {'name': name, 'password': password};
  }

  bool isPasswordIsValid(String password) {
    final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$');
    return passwordRegex.hasMatch(password);
  }

  String savedName = "";
  String savedPassword = "";

  bool dataSaved = false;
  bool gotData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFormField(
                controller: textControllerName,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: "Enter your username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
              child: TextFormField(
                controller: textControllerPassword,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: "Enter your Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                  errorText: isPasswordValid ? null : "Invalid Password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                saveData(textControllerName.text, textControllerPassword.text);
                setState(() {
                  dataSaved = true;
                });
              },
              child: Text(dataSaved ? "Saved" : "Save Data"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                Map<String, String?> userData = await getData();
                setState(() {
                  savedName = userData['name'] ?? "";
                  savedPassword = userData['password'] ?? "";
                  gotData = true;
                });
              },
              child: const Text("Get Data"),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 250,
                  height: 80,
                  color: Colors.grey[500],
                  child: Center(
                    child: Text(
                      'Your Username is: $savedName \n Password is: $savedPassword',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
