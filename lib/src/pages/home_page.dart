import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  final _estiloTexto = new TextStyle (fontSize: 25);
  int _contador = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numeros de clicks: ", style:  _estiloTexto),
            Text("$_contador", style: _estiloTexto),
          ]
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //contador = contador + 1;
        },
        ),
    );
  }
}