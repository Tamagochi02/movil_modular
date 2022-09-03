import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(label: Text("Código:")),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(label: Text("Matrícula:")),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(label: Text("Correo institucional:")),
              enabled: false,
            ),
            TextField(
              decoration: InputDecoration(label: Text("Estado:")),
              enabled: false,
            ),
            TextField(
              controller: profileNameController,
              decoration: InputDecoration(label: Text("Nombre:")),
            ),
            TextField(
              controller: profileLastname1Controller,
              decoration: InputDecoration(label: Text("Apellido paterno:")),
            ),
            TextField(
              controller: profileLastname2Controller,
              decoration: InputDecoration(label: Text("Apellido materno:")),
            ),
            TextField(
              controller: profilePasswordController,
              decoration: InputDecoration(label: Text("Contraseña:")),
            ),
            TextField(
              controller: profilePassword2Controller,
              decoration:
                  InputDecoration(label: Text("Vuelve a escribir contraseña:")),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Actualizar datos"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 60, 132, 217),
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
