import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/models/routeParamsStudentPage.dart';
import 'package:movil_modular/models/student.dart';
import 'package:movil_modular/pages/login/login_controller.dart';
import 'package:movil_modular/pages/registerUser.dart';
import 'package:movil_modular/pages/student/home.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  static const String route = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  final loginCorreoController =
      TextEditingController();
  final loginPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Text(
              "GESTOR MODULAR",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            //
            SizedBox(height: 100),
            //
            TextField(
              controller: loginCorreoController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                label: Text(
                  "Correo institucional:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            //
            SizedBox(height: 45),
            //
            TextField(
              controller: loginPassController,
              decoration: InputDecoration(
                label: Text(
                  "Contraseña:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            //
            SizedBox(height: 45),
            //
            SizedBox(
              width: 120,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  controller
                      .loginStudent(
                          loginCorreoController.text, loginPassController.text)
                      .then((value) {
                    if (value)
                      Navigator.pushNamedAndRemoveUntil(
                          context, HomePage.route, (route) => false);
                  });
                },
                child: Text("Ingresar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            //
            SizedBox(height: 45),
            //
            const Divider(
              color: Colors.white,
            ),
            //
            SizedBox(height: 45),
            //
            SizedBox(
              width: 170,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RegisterUserPage.route, (route) => false);
                },
                child: Text("Crear una cuenta",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
