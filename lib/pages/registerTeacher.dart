import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/registerUser.dart';

class RegisterTeacherPage extends StatefulWidget {
  static const String route = "/registerteacher";
  const RegisterTeacherPage({Key? key}) : super(key: key);

  @override
  State<RegisterTeacherPage> createState() => _RegisterTeacherPageState();
}

class _RegisterTeacherPageState extends State<RegisterTeacherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Registro de Docente", style: TextStyle(color: Color.fromARGB(255, 51, 51, 51))),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
                          context, RegisterUserPage.route, (route) => false);
        }, icon: Icon(Icons.close, color: Color.fromARGB(255, 51, 51, 51),)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: ListView(children: [
          TextField(
            decoration: InputDecoration(
              label: Text("Correo institucional:"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          // 
          SizedBox(height: 20),
          // 
          TextField(
            decoration: InputDecoration(
              label: Text("Nombre:"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          // 
          SizedBox(height: 20),
          // 
          TextField(
            decoration: InputDecoration(
              label: Text("Apellido paterno:"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          // 
          SizedBox(height: 20),
          // 
          TextField(
            decoration: InputDecoration(
              label: Text("Apellido materno:"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          // 
          SizedBox(height: 20),
          // 
          TextField(
            decoration: InputDecoration(
              label: Text("Contraseña:"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          // 
          SizedBox(height: 20),
          // 
          TextField(
            decoration: InputDecoration(
              label: Text("Vuelve a escribir contraseña:"),
            ),
          ),
          //
          SizedBox(height: 180),
          //
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Registrarme"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 51, 51, 51),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
