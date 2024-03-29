import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:calc1/Control_Almacenamiento.dart';

var texto1 = "";
var texto2 = "";



class cuadroDeTexto extends StatefulWidget {

  const cuadroDeTexto({Key? key}) : super(key: key);
  @override
  _cuadrotextoState createState() => _cuadrotextoState();

}

class _cuadrotextoState extends State<cuadroDeTexto>{

  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;


  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Limpia el nodo focus cuando se haga dispose al formulario
    myFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // Crea un widget Form usando el _formKey que creamos anteriormente
    return Form(

      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          /// CAMPO DE TEXTO 1
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese el usuario';
              }else{
                /// Almacena el valor una vez que valida que se ingreso un dato
                ControlAlmacenamiento.pref.setString('Nombre',value);
                ///texto1 = value;
              }
            },
            decoration: InputDecoration(
                icon: Icon(Icons.perm_contact_cal_rounded),
                labelText: 'Ingresa tu usuario'
            ),
          ),

          /// CAMPO DE TEXTO 2
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese al area que pertenece';
              }else{
                /// Almacena el valor una vez que valida que se ingreso un dato
                ControlAlmacenamiento.pref.setString('Carrera',value);
                ///texto2 = value;
              }
            },
            /// Decoracion
            decoration: InputDecoration(
                icon: Icon(Icons.work),
                labelText: 'Ingresa tu carrera'
            ),
          ),

          /// MENSAJE DE ENVIO Y BOTON DE ENVIAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 25),
            child: RaisedButton(
              color: Colors.lightGreen,
              textColor: Colors.white,
              onPressed: () {
                /// devolverá true si el formulario es válido, o falso si
                /// el formulario no es válido.
                if (_formKey.currentState!.validate()) {

                  /// Mostrara una barra en la parte inferior si el formulario es valido
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Usuario: '+texto1+'\nCarrera: '+texto2)));
                }
              },
              child: Text('Enviar'),
            ),
          ),

        ],
      ),
    );
  }
}


/// Segunda clase
/*class Mandar extends StatefulWidget{


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
                padding: const EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 7.5, color: Colors.deepPurpleAccent),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                /// Texto que imprime los datos ingresados
                child:Text(

                  'Hola '+ texto1 +"!"+ "\nDe la carrera de: "+ texto2,

                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'SpaceMono',
                    backgroundColor: Colors.lightBlueAccent,

                  ),
                ),
              ),

            ///  Row(
               /// mainAxisAlignment: MainAxisAlignment.center,
              ///  children:[
                 /// Image.asset('images/WakuWaku.png'),
                  ///Image.network
                   /// (
                   /// 'https://th.bing.com/th/id/R.11b61ab967822761fe4e6665cb61273a?rik=t5eT5%2fiYMsBVqg&pid=ImgRaw&r=0',
                 ///   scale: 4, height: 300,
                ///  ),
             ///   ],
          ///    ),

            ],
          ),
        )
    );

  }
}
*/
