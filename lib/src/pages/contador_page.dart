import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle (fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: SafeArea(child: Text("StateFul"),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numeros de clicks: ", style:  _estiloTexto),
            Text("$_contador", style: _estiloTexto),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                TextButton(style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: _sumar,//(){}, 
                child: Text("Suma")
                ),
                TextButton(style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                ), 
                onPressed: _restar,//(){},
                child: Text("Resta")
                ),

                TextButton(style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                ), 
                onPressed: _reset,//(){},
                child: Text("Reset")
              
                ),
            ],
            )
          ]
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
   );
  }
        Widget _crearBotones(){
          return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FloatingActionButton(child: Icon(Icons.calculate), onPressed: _doble),
                  SizedBox(height: 5.0),
                  FloatingActionButton(child: Icon(Icons.calculate_outlined), onPressed: _triple),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(width: 30),
                      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
                      Expanded(child: SizedBox (width: 5.0)),
                      FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
                      SizedBox(width: 5.0),
                      FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar),
                    ],
                  ),
                ],
          ); 
        }
        
      
        void _sumar(){
          setState(() {
            _contador++;
          });
        }
      
        void _restar(){
          setState(() {
            _contador--;
          });
        }
      
        void _reset(){
          setState(() {
            _contador=0;
          });
        }

        void _doble(){
          setState(() {
            _contador = _contador * 2;
          });
        }

        void _triple(){
          setState(() {
            _contador = _contador * 3;
          });
        }
      
}