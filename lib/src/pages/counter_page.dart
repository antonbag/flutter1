import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _estiloTexto = new TextStyle(fontSize: 25, color: Colors.green);
  final _estiloContador = new TextStyle(fontSize: 20, color: Colors.red);

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
          Text("número de clicks wow", style: _estiloTexto),
          Text('$_conteo', style: _estiloContador)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_ic_call_sharp),
        onPressed: () {
          _conteo++;
          setState(() {

          });

        },
      ),
    );
  }
}
