import 'package:flutter/material.dart';
import 'package:movil_modular/pages/DocUpdateView.dart';
import 'package:movil_modular/pages/consultar.dart';
import 'package:movil_modular/pages/DocRegister.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/modificar.dart';
import 'package:movil_modular/pages/moduleDoc.dart';
import 'package:movil_modular/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.route: (context) => const HomePage(),
        // EditPage.route: (context) => const EditPage(),
        // ConsultPage.route: (context) => const ConsultPage(),
        ProfilePage.route:(context) => const ProfilePage(),
        ModuleDoc.route:(context) => const ModuleDoc(),
        DocRegisterPage.route:(context) => const DocRegisterPage(),
        DocUpdateViewPage.route:(context) => const DocUpdateViewPage()
      },
      initialRoute: HomePage.route,
    );
  }
}
