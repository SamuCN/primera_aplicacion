

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() {
    
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage>{

  @override
  Widget build(BuildContext context) {
    final _estiloTexto = new TextStyle (fontSize: 25);
    int _contador = 0;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numeros de clickss: ", style:  _estiloTexto),
            Text("$_contador", style: _estiloTexto),
          ]
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          setState(() {
            _contador++;
          });

        },
        ),
    );

  }

}