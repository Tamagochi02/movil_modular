import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:movil_modular/pages/config.dart';
import 'package:movil_modular/pages/consultar.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/modificar.dart';
import 'package:movil_modular/pages/registrar.dart';
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
        RegisterPage.route: (context) => RegisterPage(),
        EditPage.route: (context) => const EditPage(),
        ConsultPage.route: (context) => const ConsultPage(),
        ConfigPage.route: (context) => const ConfigPage(),
        ProfilePage.route:(context) => const ProfilePage()
      },
      initialRoute: HomePage.route,
    );
  }
}
