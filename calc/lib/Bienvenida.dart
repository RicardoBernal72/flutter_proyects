import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:calc1/Control_Almacenamiento.dart';
import 'package:calc1/Bienvenida.dart';







class Mandar extends StatefulWidget{


  @override
  _MandarState createState() => _MandarState();
}

class _MandarState extends State<Mandar>{

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (

        body: Center
          (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              /// Cuadro que encierra al texto
              Container(

                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  //border: Border.all(width: 10, color: Colors.deepPurpleAccent),
                  //borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                /// Texto que imprime los datos ingresados
                child:Text(

                  'Usuario: '+ (ControlAlmacenamiento.pref.getString('Nombre')??'Unknow') +"!"+
                      "\n Carrera: "+ (ControlAlmacenamiento.pref.getString('Carrera')??'Sin Carrera ')
                  +'\n \n ¡Binvenido!',

                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                    fontFamily: 'Arial',
                   /// backgroundColor: Colors.yellow,

                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
             ///     Image.asset('images/WakuWaku.png'),
                  Image.network
                    (
                    'https://th.bing.com/th/id/R.11ca3339680a0946b41b636fbcc55d9d?rik=fu%2bGffsWtpUPyg&pid=ImgRaw&r=0',
                    scale: 4, height: 300,
                  ),
                ],
              ),

            ],
          ),
        )
    );

  }
}