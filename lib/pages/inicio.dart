import 'package:flutter/material.dart';
import 'package:parcial_02/pages/header.dart';
import 'package:parcial_02/json/listado.dart';
import '../datos/info.dart';

class Inicio extends StatelessWidget {
  //const Inicio({Key? key}) : super(key: key);
  var dataHead = dataStr();
  @override
  Widget build(BuildContext context) {
    dataHead.tituloPantalla = "Inicio";
    return _Pantalla(dataHead);
  }
}

Scaffold _Pantalla(var data){
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Listado de recetas caseras", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
        ),
        Container(
          height: 430,
          width: 400,
          child: SingleChildScrollView(
  child: Column(
    children: [
      _listaComida()
    ],
  ),
),
        )

      ],
    ),

  );
}

Widget _listaComida(){
  return Container(
    
    child: Column(
      
      children: 
        List.generate(listado_recipes.length, (index) {
            return  Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                 decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 226, 136, 0),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                child: Column(
                  children: [
                    Container(
                      
                                width:  400,
                                color: Color.fromARGB(255, 252, 221, 118),
                                child: Text(listado_recipes[index]["titulo"],   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                              ),
                    Row(
                      
                      children: [
                        
                        Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(listado_recipes[index]["media"]),
                                ),
                                
                              ),
                              
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  
                                  SizedBox(height: 10,),
                                  Column(
                                    children:[
                                        //Text(listado_recipes[index]["detalle"], softWrap: true,)
                                        SingleChildScrollView(
                                                child: Column(
                                                  children: <Widget>[
                                                       Text(listado_recipes[index]["detalle"], softWrap: true,),
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

Column _datosComida(){
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
                          image: NetworkImage('https://okdiario.com/img/vida-sana/2016/01/hamburguesa.jpg'),
                        ),
                        
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            width:  250,
                            color: Color.fromARGB(255, 68, 64, 51),
                            child: Text("demo")
                          ),
                          SizedBox(height: 10,),
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