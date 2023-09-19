import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.google.com"));

  WebViewController controllerYoutube = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.youtube.com"));

  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text("Web View"),flex: 2),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    change = true;
                  });
                },
                child: const Text("google"),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    change = false;
                  });
                },
                child: const Text("youtube"),
              ),
            ),
          ],
        ),
      ),
      body: WebViewWidget(controller: change ? controller: controllerYoutube,),
    );
  }
}
