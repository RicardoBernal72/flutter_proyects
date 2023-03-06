import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'menu.dart';

class saludo extends StatefulWidget {
  const saludo({Key? key}) : super(key: key);

  @override
  _BasicsaludoState createState() => _BasicsaludoState();
}
class _BasicsaludoState extends State<saludo> {
  //Text('Bienvenido'),


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Text(
        'Que pex aaaaaaa'
          ,style: TextStyle(fontSize: 50),

        ),
      ],
    ),
      ),
    );
  }
}