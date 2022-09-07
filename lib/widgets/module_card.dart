import 'package:flutter/material.dart';
import 'package:movil_modular/models/routeParamsModularProjectPage.dart';
import 'package:movil_modular/pages/moduleOne.dart';

class ModuleCard extends StatelessWidget {
  final String title;
  final int numDocs;
  const ModuleCard({
    Key? key,
    this.title = "",
    this.numDocs = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "${numDocs}/3 documentos registrados",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )
              ],
            )),
        alignment: Alignment.topLeft,
      ),
      onTap: () => Navigator.pushNamedAndRemoveUntil(
          context, ModuleOnePage.route, (route) => false, arguments: RouteParamsModularProjectPage(title, '')),
    );
  }
}
