import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/widgets/navigation_drawer.dart';

class moduleOnePage extends StatefulWidget {
  static const String route = "/moduleone";
  const moduleOnePage({Key? key}) : super(key: key);

  @override
  State<moduleOnePage> createState() => _moduleOnePageState();
}

class _moduleOnePageState extends State<moduleOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Modulo I"),
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
//
              InkWell(
                child: Container(
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
                            "Estado del Arte",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "Ninguno",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )
                        ],
                      )),
                  alignment: Alignment.topLeft,
                ),
                onTap: () {
                  print("tapped on container");
                },
                // onTap: () => Navigator.pushNamedAndRemoveUntil(
                //     context, moduleOnePage.route, (route) => false),
              ),
//
              SizedBox(height: 17),
//
              InkWell(
                child: Container(
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
                          "Resumen",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "Ninguno",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                onTap: () {
                  print("tapped on container");
                },
              ),
//
              SizedBox(height: 17),
//
              InkWell(
                child: Container(
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
                          "Informe Final",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "Ninguno",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                onTap: () {
                  print("tapped on container");
                },
              ),
//
            ],
          ),
        ));
  }
}
