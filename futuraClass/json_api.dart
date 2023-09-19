import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BackendJson extends StatefulWidget {
  const BackendJson({super.key});

  @override
  State<BackendJson> createState() => _BackendJsonState();
}

class _BackendJsonState extends State<BackendJson> {
  var data;
  bool gotData = false;
  bool downLoading = false;

  Future downLoadData() async {
    var response;
    try {
      var url = Uri.parse('https://dummyjson.com/products/1');
      response = await http.get(url);
    } catch (e) {
      print("Error = $e");
      return false;
    }
    print("Data status code = ${response.statusCode}");
    print("Data = ${response.body}");

    data = jsonDecode(response.body);
    print("Json decode= $data");
    print("Title = ${data["title"]}");
    setState(() {});
    return true;
  }

  Future post() async {
    var response;
    var data = {"title": "I am in love with someone.", "userId": "5"};
    try {
      var url = Uri.parse('https://dummyjson.com/posts/add');
      response = await http.post(url, body: data);
    } catch (e) {
      print("Error = $e");
      return false;
    }
    print("Data Status Code = ${response.statusCode}");
    print("Data = ${response.body}");
    return true;
  }

  Future put() async {
    var response;
    var data = {
      "title": "I think I should shift to the moon",
    };
    try {
      var url = Uri.parse("https://dummyjson.com/posts/1");
      response = await http.put(url, body: data);
    } catch (e) {
      print("Error = $e");
      return false;
    }
    print("Data Status Code = ${response.statusCode}");
    print("Data = ${response.body}");
    return true;
  }

  Future delete() async {
    var response;
    // var data = {"title":"I think I should shift to the moon",};
    try {
      var url = Uri.parse("https://dummyjson.com/posts/1");
      response = await http.delete(url);
    } catch (e) {
      print("Error = $e");
      return false;
    }
    print("Data Status Code = ${response.statusCode}");
    print("Data = ${response.body}");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("http Demo"),
      ),
      body: Center(
        child: Column(
          children: [
            downLoading
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.all(30),
                    child: gotData
                        ? Column(
                            children: [
                              Text(
                                "Item = ${data["title"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Id = ${data["Id"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Category = ${data["Category"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Price = ${data["Price"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Brand = ${data["Brand"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        : const Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CircularProgressIndicator(),
                            ),
                          ),)
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.all(30),
                    child: const Text("Tap download button to start download"),
                  ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    downLoading = true;
                  },);
                  gotData = await downLoadData();
                },
                child: const Text(
                  "Get",
                  style: TextStyle(fontSize: 20),
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  post();
                },
                child: const Text("Post")),
            ElevatedButton(
                onPressed: () {
                  put();
                },
                child:const Text("Put")),
            ElevatedButton(
                onPressed: () {
                  delete();
                },
                child:const Text("delete")),
          ],
        ),
      ),
    );
  }
}

class BaseClient {
  static const String baseUrl = "https://dummyjson.com/products/";
}

// BackendJson class:
//
// This is the main class of the application and extends StatefulWidget.
// It represents the main widget of the application and is responsible for managing the state and rendering the UI.
// It has two boolean variables: gotData and downLoading, which track the state of data retrieval and download.
// This class overrides the build method to construct the UI and handles user interactions.
// StatefulWidget and State:
//
// BackendJson extends StatefulWidget, which is a base class for widgets that have mutable state.
// The createState method of BackendJson returns an instance of _BackendJsonState, which extends State<BackendJson>.
// _BackendJsonState is a private class that holds the mutable state for the BackendJson widget.
// Future downLoadData():
//
// This method is an asynchronous function that performs an HTTP GET request to fetch data from a specified URL.
// It uses the http package's get method to send the request and awaits the response.
// If an error occurs during the request, it catches the exception, prints the error, and returns false.
// If the request is successful, it prints the status code and body of the response.
// It then uses jsonDecode from the dart:convert package to decode the JSON response into a Dart object.
// The decoded data is stored in the data variable and the setState method is called to update the UI with the retrieved data.
// Finally, it returns true to indicate that the data was successfully downloaded.
// Future post():
//
// This method is an asynchronous function that performs an HTTP POST request to send data to a specified URL.
// It creates a Map object data representing the JSON payload to be sent in the request.
// It uses the http package's post method to send the request and awaits the response.
// If an error occurs during the request, it catches the exception, prints the error, and returns false.
// If the request is successful, it prints the status code and body of the response.
// Finally, it returns true to indicate that the request was successful.
// Future put():
//
// This method is an asynchronous function that performs an HTTP PUT request to update data at a specified URL.
// It creates a Map object data representing the JSON payload to be sent in the request.
// It uses the http package's put method to send the request and awaits the response.
// If an error occurs during the request, it catches the exception, prints the error, and returns false.
// If the request is successful, it prints the status code and body of the response.
// Finally, it returns true to indicate that the request was successful.
// Future delete():
//
// This method is an asynchronous function that performs an HTTP DELETE request to delete data at a specified URL.
// It uses the http package's delete method to send the request and awaits the response.
// If an error occurs during the request, it catches the exception, prints the error, and returns false.
// If the request is successful, it prints the status code and body of the response.
// Finally, it returns true to indicate that the request was successful.
// build(BuildContext context):
//
// This method overrides the buildmethod from the State class and is responsible for constructing the UI of the widget.
// It returns a Scaffold widget, which provides a basic structure for the app's UI.
// The Scaffold widget has an appBar property that displays an AppBar widget at the top of the screen.
// The AppBar widget has a blue background color and displays the title "http Demo".
// The body property of the Scaffold widget contains a Center widget, which centers its child vertically and horizontally.
// The Center widget has a Column widget as its child, which arranges its children in a vertical column.
// The Column widget contains:
// A Container widget that displays the fetched data if gotData is true or a message to start the download if gotData is false.
// The Container has a grey background color and is sized to 30% of the screen's height.
// Inside the Container, there is a Column widget with either:
// A series of Text widgets displaying different properties of the fetched data, such as title, Id, Category, Price, and Brand.
// Or, a CircularProgressIndicator widget indicating that the data is being fetched.
// Below the Container, there are four ElevatedButton widgets:
// The first button triggers the downLoadData method when pressed and updates the UI accordingly.
// The second, third, and fourth buttons trigger the post, put, and delete methods, respectively.
// BaseClient class:
//
// This class defines a static constant baseUrl variable that holds the base URL for the JSON API.
// That's the full explanation of the functions, classes, and widgets in the provided code. It demonstrates how to fetch data from an API, perform HTTP requests, and update the UI with the retrieved data in a Flutter application.
