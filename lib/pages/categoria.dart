import 'package:flutter/material.dart';

import '../datos/info.dart';
import '../json/listado.dart';
import 'header.dart';

class Categorias extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  var dataHead = dataStr();
  @override
  Widget build(BuildContext context) {
    dataHead.tituloPantalla = "Categorias";
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 133, 64, 0),
              height: 24,
            ),
            fm_head(dataHead),
            Container(
              height: 480,
              child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                children: [
                    Container(
                      child: _comidas(dataHead),
                    ),
                    Container(
                      child: _postres(dataHead),
                    ),
                    Container(
                      child: _refrescos(dataHead),
                    )
                ],
              ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Scrollbar _comidas(var data) {
  return Scrollbar(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Color.fromARGB(255, 230, 122, 0),
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.fastfood, color: Colors.white,),
                SizedBox(width: 20,),
                Text("Comidas",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        ),
        Container(
          height: 170,
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [_listaComida()],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _listaComida() {
  return Container(
    child: Row(
      children: List.generate(listado_recipes.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 226, 136, 0),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      width: 380,
                      color: Color.fromARGB(255, 252, 221, 118),
                      child: Text(
                        listado_recipes[index]["titulo"],
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(listado_recipes[index]["media"]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              //Text(listado_recipes[index]["detalle"], softWrap: true,)
                              SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      listado_recipes[index]["detalle"],
                                      softWrap: true,
                                    ),
                                    // Agrega más widgets aquí si lo deseas
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}

Scrollbar _postres(var data) {
  return Scrollbar(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Color.fromARGB(255, 192, 0, 218),
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.cake, color: Colors.white,),
                SizedBox(width: 20,),
                Text("Postres",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        ),
        Container(
          height: 180,
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [_listaPostres()],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _listaPostres() {
  return Container(
    child: Row(
      children: List.generate(listadoComidaPostres.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 159, 35, 241),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      width: 400,
                      color: Color.fromARGB(255, 255, 157, 255),
                      child: Text(
                        listadoComidaPostres[index]["titulo"],
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                listadoComidaPostres[index]["media"]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              //Text(listado_recipes[index]["detalle"], softWrap: true,)
                              SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      listadoComidaPostres[index]["detalle"],
                                      softWrap: true,
                                    ),
                                    // Agrega más widgets aquí si lo deseas
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}

/*
Column _datosComida() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://okdiario.com/img/vida-sana/2016/01/hamburguesa.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Container(
                        width: 250,
                        color: Color.fromARGB(255, 68, 64, 51),
                        child: Text("demo")),
                    SizedBox(
                      height: 10,
                    ),
                    Text("demo"),
                    Text("demo"),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

*/

Scrollbar _refrescos(var data) {
  return Scrollbar(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       Container(
          color: Color.fromARGB(255, 63, 172, 0),
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.local_drink, color: Colors.white,),
                SizedBox(width: 20,),
                Text("Refrescos y bebidas",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        ),
        Container(
          height: 180,
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [_listaRefrescos()],
            ),
          ),
        )
      ],
    ),
  );
}


Widget _listaRefrescos() {
  return Container(
    child: Row(
      children: List.generate(listadoComidaRefrescos.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 0, 163, 68),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      width: 400,
                      color: Color.fromARGB(255, 167, 255, 155),
                      child: Text(
                        listadoComidaRefrescos[index]["titulo"],
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                listadoComidaRefrescos[index]["media"]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              //Text(listado_recipes[index]["detalle"], softWrap: true,)
                              SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      listadoComidaRefrescos[index]["detalle"],
                                      softWrap: true,
                                    ),
                                    // Agrega más widgets aquí si lo deseas
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}