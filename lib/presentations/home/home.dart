import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/";

  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool internetDisconnected = false;
  late WebViewController controller;
  bool isOpenWebwiew = false;
  @override
  void initState() {
    loadingWebwiew();
    super.initState();
  }

  loadingWebwiew() {
    controller = WebViewController()
      ..enableZoom(false)
      ..loadRequest(Uri.parse('https://omus.netlify.app/'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (error) {
            if (error.errorType == WebResourceErrorType.hostLookup) {
              setState(() {
                internetDisconnected = true;
              });
            }
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(builder: (context) {
          return !internetDisconnected
              ? WebViewWidget(
                  controller: controller,
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Iltimos, Internetingizni tekshiring!"),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              internetDisconnected = false;
                            });
                            loadingWebwiew();
                          },
                          child: const Text("Qayta urunish"))
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
