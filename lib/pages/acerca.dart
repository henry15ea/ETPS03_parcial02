import 'package:flutter/material.dart';
import 'package:parcial_02/pages/header.dart';

import '../datos/info.dart';

class AcercaDe extends StatelessWidget {
  // const AcercaDe({Key? key}) : super(key: key);
  var dataHead = dataStr();
  @override
  Widget build(BuildContext context) {
    dataHead.tituloPantalla = "Acerca de";
    return Container(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color.fromARGB(255, 133, 64, 0),
              height: 24,
            ),
            fm_head(dataHead),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/96552301?v=4",
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Materia : ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 27, 27, 27),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "TECNICAS DE CALIDAD DE SOFTWARE",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 61, 192),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Nombre : ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 27, 27, 27),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Henry Ernesto Aquino Guzman ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 61, 192),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Carnet : ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 27, 27, 27),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "25-5347-2013 ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 61, 192),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
