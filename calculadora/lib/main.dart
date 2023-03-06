import 'package:flutter/material.dart';

void main(){
  runApp(
    MiWidget1()
  );

}
class MiWidget1 extends StatelessWidget {
  List<String> tareas=[
    'csijcisjo',
    'veralgo'
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion',
      home: Scaffold(
        appBar: AppBar(title: Text('queso'),
        ),
        body: Column(
          children: tareas.map((elem) => Tarea(elem)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_photo_alternate_rounded),
          onPressed: () {
            print('click');
          },
        ),
      ),
    );


  }
}
class Tarea extends StatelessWidget{
  String tarea="auendioasn";

  Tarea(this.tarea){
    this.tarea=tarea;
  }
    @override
  Widget build(BuildContext context){
      return Card(
        child: Center (
          child: Text(tarea),
        ),
      );
  }
  }




 /// runApp(
  ///  MaterialApp(
  ///    title: 'Mi aplicacion',
  ///    home:Scaffold(
  ///     appBar: AppBar(title: Text('queso'),
  ///     ),
  ///     body: Center(
  ///       child: Text('gugui'),
  ///     ),
  ///     floatingActionButton: FloatingActionButton(
  ///       child: Icon(Icons.add_photo_alternate_rounded),
  ///       onPressed: (){
  ///        print('click');
  ///       },
///    ),


  ///  )

    ///Center(
   ///   child: Text('hola Mundo', textDirection: TextDirection.ltr,),

