import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/login/login_web_view.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('content/images/login/login-bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginWebView()));
          },
          child: Text('Login'),
        ),
      ),
      backgroundColor: Color(0xff484396),
    );
  }
}
  // Center(
      //   child: ElevatedButton(
          
      //     onPressed: () {
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => LoginWebView()));
      //     },
      //     child: Text('Login'),
          
      //   ),
     // ),
    // );