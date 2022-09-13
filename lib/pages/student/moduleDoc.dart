import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/models/routeParamsModularProjectPage.dart';
import 'package:movil_modular/pages/student/docRegister.dart';
import 'package:movil_modular/widgets/doc_card.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class ModuleDoc extends StatelessWidget {
  static const String route = "/moduledoc";
  const ModuleDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(RouteParamsModularProjectPage.title),
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
// Contenedores/cards de documentos en la seccion modulo 1:
              DocCard(
                  title: "Estado del Arte",
                  docName: "Ninguno",
                  status: DocStatus.sinEntregar),

              SizedBox(height: 17),
//
              DocCard(
                  title: "Resumen",
                  docName: "Nombre de prueba2",
                  status: DocStatus.entregado),

              SizedBox(height: 17),
//
              DocCard(
                  title: "Informe Final",
                  docName: "Nombre de prueba3",
                  status: DocStatus.entregado)
//
            ],
          ),
        ));
  }
}
