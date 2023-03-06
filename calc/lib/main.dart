import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:calc1/menu.dart';

void main(){
  //el main de toda la vida que inicai el código.
  runApp(const MyApp());
}
// *****************************************************************************
// Clases de la aplicación.
class MyApp extends StatelessWidget
    //clase principal de la aplicación
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      //se da formato al titulo
      title: 'Calculadora',//Titulo de la aplicación


      //se envía al inicio (menú)?********
      home: menu(), //Titulo de la barra.
    );

  }

}

////////////////////////////////////



//********************************************************************
//class BasicBottomNavBar extends StatefulWidget {
//const BasicBottomNavBar({Key? key}) : super(key: key);


  //@override
  //_BasicBottomNavBarState createState() => _BasicBottomNavBarState();}

//class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
  //int _selectedIndex = 0;


  //void _onItemTapped(int index) {
    //setState(() {
      //_selectedIndex = index;
    //});
  //}









//*******************************************************

class calcu extends StatefulWidget {
  const calcu({Key? key, required this.title}) : super(key: key);
  // Como se esta pidiendo el titulo este se debe declarar como final
  final String title;

  @override
  State<calcu> createState() => _calcu();
}

//
class _calcu extends State<calcu> {//
  String _numero = "";


  ///int _counter = 0;
  void _vaciar() {
    // Actualizar el estado con Set State
    setState(() {
      _numero="";
    });
  }
  void _uno(){
    setState((){
      _numero+="1";
    });
  }
  void _dos(){
    setState((){
      _numero+="2";
    });
  }
  void _tres(){
    setState((){
      _numero+="3";
    });
  }
  void _cuatro(){
    setState(() {
      _numero+="4";
    });
  }
  void _cinco() {
    setState(() {
      _numero += "5";
    });
  }
  void _seis() {
    setState(() {
      _numero += "6";
    });
  }
  void _siete() {
    setState(() {
      _numero += "7";
    });
  }
  void _ocho() {
    setState(() {
      _numero += "8";
    });
  }
  void _nueve() {
    setState(() {
      _numero += "9";
    });
  }
  void _menos() {
    setState(() {
      _numero += "-";
    });
  }
  void _mas() {
    setState(() {
      _numero += "+";
    });
  }
  void _slash() {
    setState(() {
      _numero += "/";
    });
  }
  void _igual() {
    setState(() {
      _numero += "=";
    });
  }
  void _punto() {
    setState(() {
      _numero += ".";
    });
  }
  @override
  Widget build(BuildContext context) {
    // Scaffold estante
    return Scaffold(
     // appBar: AppBar(


      //),
      //bottomNavigationBar: BottomNavigationBar(
        //items: const <BottomNavigationBarItem>[
        //BottomNavigationBarItem(
          //icon: Icon(Icons.call),
          //label: 'Inicio',
        //),
        //BottomNavigationBarItem(
          //icon: Icon(Icons.calculate),
          //label: 'Calculadora',
        //),
        //BottomNavigationBarItem(
          //icon: Icon(Icons.account_circle_outlined),
          //label: 'Texto',
        //),
     // ]
      //),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_numero'
              ,style: TextStyle(fontSize: 50),
            ),
            /// PRIMERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("1"),backgroundColor: Colors.green,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_dos,
                        child: const Text("2"),backgroundColor: Colors.lightGreen,
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_tres,
                        child: const Text("3")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("*")
                    ),
                  ],
                ),
              ],
            ),
            /// SEGUNDA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_cuatro,
                      tooltip: 'Increment',
                      child: const Text("4"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_cinco,
                        child: const Text("5")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_seis,
                        child: const Text("6")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_menos,
                        child: const Text("-")
                    ),
                  ],
                ),
              ],
            ),
            /// TERCERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_siete,
                      tooltip: 'Increment',
                      child: const Text("7"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_ocho,
                        child: const Text("8")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_nueve,
                        child: const Text("9")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_mas,
                        child: const Text("+")
                    ),
                  ],
                ),
              ],
            ),
            /// CUARTA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("0"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_punto,
                        child: const Text(".")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_igual,
                        child: const Text("=")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_slash,
                        child: const Text("/")
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _vaciar,
        tooltip: 'Increment',
        child: const Icon(Icons.shopping_cart_sharp),backgroundColor: Colors.purple,
      ), // This trailing comma makes auto-formatting nicer for build methods

    );
  }
}


