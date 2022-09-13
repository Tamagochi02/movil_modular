import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/moduleDoc.dart';
import 'package:file_picker/file_picker.dart';

class DocUpdateViewPage extends StatefulWidget {
  static const String route = "/docUpdateView";
  const DocUpdateViewPage({Key? key}) : super(key: key);

  @override
  State<DocUpdateViewPage> createState() => _DocUpdateViewPageState();
}

class _DocUpdateViewPageState extends State<DocUpdateViewPage> {
  bool showDropdownStudents = false;
  bool showDropdownTeachers = false;
  bool fileChoosed = false;
  String filee = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Estado del Arte",
          style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, ModuleDoc.route, (route) => false);
          },
          icon: Icon(Icons.close),
          color: Color.fromARGB(255, 51, 51, 51),
        ),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        //
        child: Column(children: [
          TextField(
            decoration: InputDecoration(label: Text("Nombre del proyecto:")),
          ),
          //
          SizedBox(height: 45),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Tipo de espaciado entre los componentes de row
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Color.fromARGB(255, 224, 83, 72)),
                    onPressed: () async {
                      // Aqui abrira el pdf subido
                    },
                    child: Icon(
                      Icons.picture_as_pdf_outlined,
                      size: 60,
                    )),
              ),
              Text("Nombre de archivo subido.pdf")
            ],
          ),
          //
          SizedBox(height: 45),
          //
          TextField(
            decoration: InputDecoration(label: Text("Asesor:")),
            enabled: false,
          ),
          //
          SizedBox(height: 45),
          //
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Text("Observaciones"),
                      TextField(
                        enabled: false,
                        maxLines: 100, //o nulo,
                      ),
                    ],
                  )),
            ),
          ),
          //
          SizedBox(height: 45),
          //
          ElevatedButton(
            onPressed: () {},
            child: Text("Actualizar datos"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 60, 132, 217),
              padding: const EdgeInsets.all(15),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
