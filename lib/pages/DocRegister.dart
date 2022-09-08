import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/models/routeParamsModularProjectPage.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/moduleDoc.dart';
import 'package:file_picker/file_picker.dart';

class DocRegister extends StatefulWidget {
  static const String route = "/docregister";
  const DocRegister({Key? key}) : super(key: key);

  @override
  State<DocRegister> createState() => _DocRegisterState();
}

class _DocRegisterState extends State<DocRegister> {
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
            // Navigator.pushNamedAndRemoveUntil(
            //     context, ModuleDoc.route, (route) => false);
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Color.fromARGB(255, 224, 83, 72)),
                    onPressed: () async {
                      // FilePickerResult? result =
                      //     await FilePicker.platform.pickFiles();

                      // if (result != null) {
                      //   PlatformFile file = result.files.first;

                      //   print(file.name);
                      //   print(file.bytes);
                      //   print(file.size);
                      //   print(file.extension);
                      //   print(file.path);
                      // } else {
                      //   // User canceled the picker
                      // }
                    },
                    child: Icon(Icons.picture_as_pdf_outlined)),
              ),
              Text("Nombre de archivo.pdf"),
            ],
          ),
          DropdownButton(
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(value: "1", child: Text('1')),
                DropdownMenuItem(value: "2", child: Text('2')),
                DropdownMenuItem(value: "3", child: Text('3'))
              ],
              onChanged: ((value) => setState(
                    () {},
                  ))),
          //
        ]),
      ),
    );
  }
}
