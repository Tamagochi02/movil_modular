import 'package:flutter/material.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class EditPage extends StatelessWidget {
  static const String route = "/edit";
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: const Text("Modificar"),
    );
  }
}
