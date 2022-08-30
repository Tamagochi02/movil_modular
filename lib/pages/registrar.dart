import 'package:flutter/material.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class RegisterPage extends StatefulWidget {
  static const String route = "/register";

  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final projectNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: ListView(children: [
        TextField(
          controller: projectNameController,
          decoration: InputDecoration(label: Text("Nombre del proyecto:")),
        ),
        DropdownButton(
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(value: "1", child: Text('1')),
              DropdownMenuItem(value: "2", child: Text('2')),
              DropdownMenuItem(value: "3", child: Text('3'))
            ],
            onChanged: ((value) => setState(
                  () {},
                ))),
        DropdownButton(
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(value: 'Nombre alumno', child: Text('Nombre alumno'))
            ],
            onChanged: ((value) => setState(
                  () {},
                ))),
        DropdownButton(
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(value: "Nombre asesor", child: Text("Nombre asesor"))
            ],
            onChanged: ((value) => setState(
                  () {},
                ))),
         DropdownButton(
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(value: "Módulo 1", child: Text("Módulo 1")),
              DropdownMenuItem(value: "Módulo 2", child: Text("Módulo 2")),
              DropdownMenuItem(value: "Módulo 3", child: Text("Módulo 3"))
            ],
            onChanged: ((value) => setState(
                  () {},
                ))),
        TextButton(onPressed: (){}, child: Text("Registrar"))
      ]),
    );
  }
}
