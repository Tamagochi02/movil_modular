import 'package:flutter/material.dart';
import 'package:movil_modular/pages/profile.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

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
        // drawer: const NavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
                width: double.maxFinite,
                height: 200,
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Modular I",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "0/3 documentos registrados",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )
                      ],
                    )),
                alignment: Alignment.topLeft,
              ),
              SizedBox(height: 17),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 51, 51, 51)),
                width: double.maxFinite,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Modulo II",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "0/3 documentos registrados",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )
                    ],
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(height: 17),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 51, 51, 51)),
                width: double.maxFinite,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Modulo III",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "0/3 documentos registrados",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )
                    ],
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ));
  }
}
