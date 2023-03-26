import 'package:flutter/material.dart';
import 'package:calc1/main.dart';
import 'package:calc1/saludo.dart';
import 'package:calc1/config.dart';
import 'package:calc1/Bienvenida.dart';
//import 'package:calculadora/Mandar.dart';



//Esta clase es para crear el menu de navegación.
class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);


  @override
  _BasicmenuState createState() => _BasicmenuState();
}

class _BasicmenuState extends State<menu>  {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    Mandar(),
    calcu(title: 'no se donde va esto'),
    cuadroDeTexto(),


    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
  ];




  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Asignación'),backgroundColor: Colors.orangeAccent,
      ),
      body:
      Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      /*IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculadora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Config',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chats',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
