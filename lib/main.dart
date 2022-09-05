import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:movil_modular/pages/consultar.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/modificar.dart';
import 'package:movil_modular/pages/moduleOne.dart';
import 'package:movil_modular/pages/moduleThree.dart';
import 'package:movil_modular/pages/moduleTwo.dart';
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
        // RegisterPage.route: (context) => RegisterPage(),
        // EditPage.route: (context) => const EditPage(),
        // ConsultPage.route: (context) => const ConsultPage(),
        ProfilePage.route:(context) => const ProfilePage(),
        moduleOnePage.route:(context) => const moduleOnePage(),
        moduleTwoPage.route:(context) => const moduleTwoPage(),
        moduleThreePage.route:(context) => const moduleThreePage()
      },
      initialRoute: HomePage.route,
    );
  }
}
