import 'package:flutter/material.dart';
import 'package:movil_modular/pages/logIn.dart';
import 'package:movil_modular/pages/student/docUpdateView.dart';
import 'package:movil_modular/pages/student/docRegister.dart';
import 'package:movil_modular/pages/student/home.dart';
import 'package:movil_modular/pages/student/moduleDoc.dart';
import 'package:movil_modular/pages/student/profile.dart';

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
        LoginPage.route:(context) => const LoginPage(),
        ProfilePage.route:(context) => const ProfilePage(),
        ModuleDoc.route:(context) => const ModuleDoc(),
        DocRegisterPage.route:(context) => const DocRegisterPage(),
        DocUpdateViewPage.route:(context) => const DocUpdateViewPage()
      },
      // initialRoute: HomePage.route,
      initialRoute: LoginPage.route,
    );
  }
}
