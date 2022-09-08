import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_modular/models/routeParamsModularProjectPage.dart';
import 'package:movil_modular/pages/home.dart';
import 'package:movil_modular/pages/moduleDoc.dart';
import 'package:file_picker/file_picker.dart';

class DocRegister extends StatelessWidget {
  static const String route = "/docregister";
  const DocRegister({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
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
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(label: Text("Nombre del proyecto:")),
          ),
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
                  child: Icon(Icons.picture_as_pdf_outlined)))
        ]),
      ),
    );
  }
}
