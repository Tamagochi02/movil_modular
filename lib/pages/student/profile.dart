import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/student/home.dart';

class ProfilePage extends StatefulWidget {
  static const String route = "/profile";
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profileNameController = TextEditingController();
  final profileLastname1Controller = TextEditingController();
  final profileLastname2Controller = TextEditingController();
  final profilePasswordController = TextEditingController();
  final profilePassword2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 117, 223),
        title: Text("Información personal"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, HomePage.route, (route) => false);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Código:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Matrícula:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Correo institucional:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Estado:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              enabled: false,
            ),
            TextField(
              controller: profileNameController,
              decoration: InputDecoration(
                label: Text("Nombre:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            TextField(
              controller: profileLastname1Controller,
              decoration: InputDecoration(
                label: Text("Apellido paterno:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            TextField(
              controller: profileLastname2Controller,
              decoration: InputDecoration(
                label: Text("Apellido materno:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            TextField(
              controller: profilePasswordController,
              decoration: InputDecoration(
                label: Text("Contraseña:"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            TextField(
              controller: profilePassword2Controller,
              decoration: InputDecoration(
                label: Text("Vuelve a escribir contraseña:"),
              ),
            ),
            // 
            SizedBox(height: 20),
            // 
            ElevatedButton(
              onPressed: () {},
              child: Text("Actualizar datos"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 30, 58, 138),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
