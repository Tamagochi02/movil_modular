import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/logIn.dart';
import 'package:movil_modular/pages/registerStudent.dart';
import 'package:movil_modular/pages/registerTeacher.dart';

class RegisterUserPage extends StatelessWidget {
  static const String route = "/registeruser";
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 40),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginPage.route, (route) => false);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 240, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                          context, RegisterStudentPage.route);
                        },
                        child: Text("Alumno"),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 68, 117, 223),
                        )),
                  ),
                  //
                  SizedBox(height: 45),
                  //
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                          context, RegisterTeacherPage.route);
                        },
                        child: Text("Docente"),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 170, 96, 219),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
