import 'package:flutter/material.dart';

import '../datos/info.dart';
import 'header.dart';

class formulario extends StatelessWidget {
  //const formulario({Key? key}) : super(key: key);
    // Key that uniquely identifies the Form
var dataHead = dataStr();
  @override
  Widget build(BuildContext context) {
    dataHead.tituloPantalla = "Registro";
    return _dcform(dataHead);
  }
}

Scaffold _dcform(data){
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Color.fromARGB(255, 133, 64, 0),
          height: 24,
        ),
        fm_head(data),

        Container(
          child: SingleChildScrollView(
            child: Card(
              elevation: 16.0,
              shadowColor: Colors.deepPurple,
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(height: 10,),
                        SizedBox(width: 20,),
                        Text("Registro de nuevo usuario", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 , color: Colors.blueAccent) ),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: new InputDecoration( hintText: "Nombre"),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 2) {
                          return 'Please enter a correct username (min 2)';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: new InputDecoration( hintText: "Apellidos"),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 2) {
                          return 'Please enter a correct username (min 2)';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: new InputDecoration( hintText: "Telefono"),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 2) {
                          return 'Please enter a correct username (min 2)';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: new InputDecoration(hintText: "Email"),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter a correct email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: new InputDecoration(hintText: "Contraseña"),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return 'Please enter a correct password (min 8)';
                        }
                        return null;
                      },
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                    ElevatedButton(
                      onPressed: () {
                        // If the form is true (valid), or false.
                        print("registro");
                      },
                      child: Text('Registrarme'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
