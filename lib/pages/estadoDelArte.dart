import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/moduleDoc.dart';

class EstadoArtePage extends StatelessWidget {
  static const String route = "/estadoarte";
  const EstadoArtePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Estado del Arte",
          style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ModuleDoc.route, (route) => false);
            },
            icon: Icon(Icons.close), color: Color.fromARGB(255, 51, 51, 51),),
      ),
    );
  }
}
