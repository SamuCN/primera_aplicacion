import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  final estiloTexto = new TextStyle (fontSize: 25);
  int contador = 0;
  
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
            Text("Numeros de clicks: ", style:  estiloTexto),
            Text("$contador", style: estiloTexto),
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