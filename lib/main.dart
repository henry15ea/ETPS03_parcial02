import 'package:flutter/material.dart';
import 'package:parcial_02/pages/navigationbar.dart';

void main() {
  runApp(const Parcial02());
}

class Parcial02 extends StatelessWidget {
  const Parcial02({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: navigationbar(),
       
      ),
    );
  }
}

Container _boton(){
  return Container(
    child: FloatingActionButton(
        onPressed: _demo,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
  );
}

Container _demo(){
  return Container();
}