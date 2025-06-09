import 'package:flutter/material.dart';
import 'package:myapp/Services/firebase_services.dart';

class AddName extends StatefulWidget {
  const AddName({super.key});

  @override
  State<AddName> createState() => _AddNameState();
}

class _AddNameState extends State<AddName> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Nombre"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese el id',
            ),
          ),
          
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese el nombre',
            ),
          ),

          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese edad',
            ),
          ),

          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese numero de telefono ',
            ),
          ),

          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese el correo electronico',
            ),
          ),
          
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese su domicilio',
            ),
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Ingrese forma de pago',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await addPeople(nameController.text).then((_) {
                Navigator.pop(context);
              });
            },
            child: Text("Guardar"),
          ),
        ],
      ),
    );
  }
}
