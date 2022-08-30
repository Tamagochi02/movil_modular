import 'package:flutter/material.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class ConfigPage extends StatelessWidget {
  static const String route = "/config";
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: const Text("Config"),
    );
  }
}
