import 'package:flutter/material.dart';
import 'package:myapp/Services/firebase_services.dart';

class EditName extends StatefulWidget {
  const EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Nombre"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: ' Ingrese la modificación ',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1690792504.
              await updatePeople(arguments['uid'], nameController.text).then((value) {
                Navigator.pop(context);
              });
            },
            child: Text("Actualizar"),
          ),
        ],
      ),
    );
  }
}
