import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  static const String route = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text(
            "GESTOR MODULAR",
            style: TextStyle(color: Colors.white),
          ),
          
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
