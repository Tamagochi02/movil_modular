import 'package:flutter/material.dart';
import 'package:movil_modular/pages/student/docRegister.dart';
import 'package:movil_modular/pages/student/docUpdateView.dart';

enum DocStatus { sinEntregar, entregado, debeModificarse, revisado }

class DocCard extends StatelessWidget {
  final String title;
  final String docName;
  final DocStatus status;

  const DocCard(
      {Key? key,
      this.title = "",
      this.docName = "",
      this.status = DocStatus.sinEntregar})
      : super(key: key);

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
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  docName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      status.name,
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    // TextButton(
                    //     onPressed: () {
                    //       if (docName != "Ninguno") {
                    //         Navigator.pushNamedAndRemoveUntil(
                    //         context, DocRegister.route, (route) => false);
                    //       }
                    //     },
                    //     child: docName != "Ninguno"
                    //         ? const Text("Ver")
                    //         : const Text("Registrar")),
                    Text(docName != "Ninguno" ? "Ver" : "Registrar",
                    style: TextStyle(color: Colors.blue),)
                  ],
                )
              ],
            )),
      ),
      onTap: () => Navigator.pushNamed(
          // context, DocUpdateViewPage.route),
          context, docName != "Ninguno" ? DocUpdateViewPage.route : DocRegisterPage.route),
    );
//
  }
}
