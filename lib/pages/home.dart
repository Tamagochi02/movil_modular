import 'package:flutter/material.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  static const String route = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: const Text("Home"),
    );
  }
}
