import 'package:flutter/material.dart';
import 'package:movil_modular/pages/moduleDoc.dart';
import 'package:movil_modular/pages/profile.dart';
import 'package:movil_modular/widgets/module_card.dart';

class HomePage extends StatelessWidget {
  static const String route = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gestor Modular"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, ProfilePage.route, (route) => false);
              },
              icon: Icon(Icons.settings)),
        ),
        //
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
//
              ModuleCard(title: "Módulo I", numDocs: 0),
//
              SizedBox(height: 17),
//
              ModuleCard(title: "Módulo II", numDocs: 0),
//
              SizedBox(height: 17),
//
              ModuleCard(title: "Módulo III", numDocs: 0),
//
            ],
          ),
        ));
  }
}
