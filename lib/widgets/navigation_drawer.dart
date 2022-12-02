import 'package:flutter/material.dart';
import 'package:movil_modular/pages/login/logIn_view.dart';
import 'package:movil_modular/pages/login/login_controller.dart';
import 'package:movil_modular/pages/student/home.dart';

class NavigationDrawer extends StatelessWidget {
  final controller = LoginController();
  NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 25),
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              const Text(
                "Alumno",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.account_box_outlined,
                size: 30.0,
              )
            ],
          ),
          //
          SizedBox(height: 10),
          //
          Divider(),
          //
          TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, HomePage.route, (route) => false),
              child: Row(
                children: const [
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 51, 51, 51),
                    size: 25.0,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Inicio",
                    style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
                  )
                ],
              )),
          //
          Divider(),
          //
          Text(
            "Equipo",
            style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
          ),
          //
          Row(
            children: [
              Icon(
                Icons.boy,
                size: 28.0,
              ),
              const Text(
                "Integrante 1",
                // textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.boy,
                size: 28.0,
              ),
              const Text(
                "Integrante 2",
                // textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.boy,
                size: 28.0,
              ),
              const Text(
                "Integrante 3",
                // textAlign: TextAlign.left,
              ),
            ],
          ),
          //
          Divider(),
          //
          Text(
            "Asesor",
            style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
          ),
          //
          Row(
            children: [
              Icon(
                Icons.boy,
                size: 28.0,
              ),
              const Text(
                "Asesor",
                // textAlign: TextAlign.left,
              ),
            ],
          ),
          //
          Divider(),
          //
          TextButton(
              onPressed: () {
                controller.logoutStudent();
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginPage.route, (route) => false);
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 51, 51, 51),
                    size: 25.0,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Cerrar sesion",
                    style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
                  )
                ],
              )),
          //
        ],
      ),
    ));
  }
}
