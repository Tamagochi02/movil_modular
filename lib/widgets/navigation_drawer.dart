import 'package:flutter/material.dart';
import 'package:movil_modular/pages/config.dart';
import 'package:movil_modular/pages/consultar.dart';
import 'package:movil_modular/pages/modificar.dart';
import 'package:movil_modular/pages/registrar.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle_outlined, size: 130.0),
          TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, RegisterPage.route, (route) => false),
              child: Row(
                children: const [
                  Icon(Icons.stay_primary_portrait_rounded),
                  SizedBox(width: 10),
                  Text("Registrar")
                ],
              )),
          TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, EditPage.route, (route) => false),
              child: Row(
                children: const [
                  Icon(Icons.drive_file_rename_outline_rounded),
                  SizedBox(width: 10),
                  Text("Modificar")
                ],
              )),
          TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, ConsultPage.route, (route) => false),
              child: Row(
                children: const [
                  Icon(Icons.feed_outlined),
                  SizedBox(width: 10),
                  Text("Consultar")
                ],
              )),
          TextButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, ConfigPage.route, (route) => false),
              child: Row(
                children: const [
                  Icon(Icons.settings_applications),
                  SizedBox(width: 10),
                  Text("Configuración")
                ],
              ))
        ],
      ),
    );
  }
}
