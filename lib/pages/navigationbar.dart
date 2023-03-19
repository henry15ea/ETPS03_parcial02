import 'package:flutter/material.dart';
import 'package:parcial_02/pages/acerca.dart';
import 'package:parcial_02/pages/categoria.dart';
import 'package:parcial_02/pages/formulario.dart';
import 'package:parcial_02/pages/inicio.dart';

class navigationbar extends StatefulWidget {
  navigationbar({Key? key}) : super(key: key);

  @override
  _navigationbarState createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: _actionbutton,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.restaurant),
            label: "Recipes",
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Plans',
          ),
          
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart),
            label: 'Groceries',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        _menuInicio(),
        _fn_formulario(),
        _fn_categorias(),
        _About(),
      ][currentPageIndex],
    );
  }
}

Container _actionbutton(){
  return Container();
}

Container _menuInicio(){
  return Container(
    child: Padding(
      padding: EdgeInsets.all(1),
      child: Inicio(),
    ),
  );
}

Container _fn_formulario(){
  return Container(
    child: Padding(
      padding: EdgeInsets.all(1),
      child: formulario(),
    ),
  );
}

Container _fn_categorias(){
  return Container(
    child: Padding(
      padding: EdgeInsets.all(1),
      child: Categorias(),
    ),
  );
}

Container _About(){
 return Container(
    child: Padding(
      padding: EdgeInsets.all(1),
      child: AcercaDe(),
    ),
  );
}