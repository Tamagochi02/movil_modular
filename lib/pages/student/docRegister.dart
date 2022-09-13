import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/pages/student/home.dart';
import 'package:movil_modular/pages/student/moduleDoc.dart';
import 'package:file_picker/file_picker.dart';

class DocRegisterPage extends StatefulWidget {
  static const String route = "/docregister";
  const DocRegisterPage({Key? key}) : super(key: key);

  @override
  State<DocRegisterPage> createState() => _DocRegisterPageState();
}

class _DocRegisterPageState extends State<DocRegisterPage> {
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
        child: ListView(children: [
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
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf'],
                          );

                      if (result != null) {
                        PlatformFile file = result.files
                            .first; // variable que guarda info del documento
                        filee = file.name;
                        fileChoosed = true;
                        setState(() {
                          
                        });
                      } else { // si el usuario no sube nada
                        fileChoosed = false;
                      }
                    },
                    child: Icon(
                      Icons.picture_as_pdf_outlined,
                      size: 60,
                    )),
              ),
              Text(fileChoosed ? filee : "Sube un archivo")
            ],
          ),
          //
          SizedBox(height: 45),
          //
          InkWell(
            onTap: () {
              setState(() {
                showDropdownStudents = !showDropdownStudents;
              });
            },
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text("Integrantes del equipo"),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          if (showDropdownStudents)
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Alumno 1")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Alumno 2")
                    ],
                  ),
                ],
              ),
            ),
          //
          SizedBox(height: 45),
          //
          InkWell(
            onTap: () {
              setState(() {
                showDropdownTeachers = !showDropdownTeachers;
              });
            },
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text("Asesor"),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          if (showDropdownTeachers)
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Asesor 1")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Asesor 2")
                    ],
                  ),
                ],
              ),
            ),
          //
          SizedBox(height: 180),
          //
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Registrar"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 60, 132, 217),
                padding: const EdgeInsets.all(15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
