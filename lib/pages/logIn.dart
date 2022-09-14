import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:passwordfield/passwordfield.dart';

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
            PasswordField(
              inputDecoration: PasswordDecoration(
                inputPadding: const EdgeInsets.symmetric(horizontal: 10),
                inputStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
            //
            SizedBox(height: 45),
            //
            SizedBox(
              width: 120,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Ingresar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            //
            SizedBox(height: 45),
            //
            Divider(
              color: Colors.white,
            ),
            //
            SizedBox(height: 45),
            //
            SizedBox(
              width: 170,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
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
