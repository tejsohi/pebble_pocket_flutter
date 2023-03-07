import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWebView extends StatefulWidget {
  const LoginWebView({super.key});

  @override
  State<LoginWebView> createState() => _LoginWebViewAppState();
}

class _LoginWebViewAppState extends State<LoginWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://v3.pebblepad.co.uk/login/Login/ChooseInstall'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to PebblePad'),
        backgroundColor: Color(0xFF5f67ab),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
