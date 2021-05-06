import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _estiloTexto = new TextStyle(fontSize: 25, color: Colors.green);
  final _estiloContador = new TextStyle(fontSize: 20, color: Colors.green);
  final _estiloContadorNegativo = new TextStyle(fontSize: 20, color: Colors.red);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador yeah"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://fcordon.webs.upv.es/starwars/leia.jpg'),
              radius: 20,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            child: CircleAvatar(
                child: Text('LE'), backgroundColor: Colors.grey, radius: 20),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("cambia de color :)", style: _estiloTexto),
          esNegativo(_conteo)
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              backgroundColor: Colors.red[100],
              child: Icon(Icons.remove_circle, color: Colors.red),
              onPressed: () {
                _conteo--;
                setState(() {});
              },
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[100],
            child: Icon(Icons.add_circle, color: Colors.red),
            onPressed: () {
              _conteo++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  esNegativo(int valor) {
    //un poco retorcido pero quería probar
    if(valor.isNegative){
        return Text('$_conteo', style: _estiloContadorNegativo);
    }else{
       return Text('$_conteo', style: _estiloContador);
    }
   
  }
}
