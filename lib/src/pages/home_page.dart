import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/counter_page.dart';
import 'package:flutter_application_1/src/providers/menu_provider.dart';
import 'package:flutter_application_1/src/utils/icono_string_util.dart';

//clase principal home
//statelesswidget. No se por que es less y no full
class HomePage extends StatelessWidget {
  //final opciones = ["dfas", "popo", "umi", "restu"];

  //widget builder construye el armazón scaffoldeado
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Componente muchas preguntas")),
        body: _lista());
  }

  //el cuerpo del scaffold llama a lista
  //pregunta, un body requiere un builder? un futureBuilder?
  Widget _lista() {
    //es un Futurebuilder porque llama a cosas asyncronas
    return FutureBuilder(
        future: menuProvider.cargarData(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          //print('builder!');
          return ListView(
            children: _listaItems(snapshot.data!, context),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic> datos, BuildContext context) {
    //print(datos);

    final List<Widget> opciones = [];

    datos.forEach((opt) {
      //print(opt);

      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon'], opt['color']),
          trailing: Icon(Icons.ad_units_sharp, color: Colors.amber),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => CounterPage());
              Navigator.pushNamed(context, opt['ruta']);
          });

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;

    /* 


    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
              title: Text('$item'),
              subtitle: Text("aasdf"),
              leading: Icon(Icons.access_alarm, color: Colors.pink),
              trailing: Icon(Icons.ad_units_sharp, color: Colors.amber)),
          //onTap: () {}
          Divider()
        ],
      );
    }).toList();
    /*     return [
      ListTile(title: Text("list view")),
      Divider(),
      ListTile(title: Text("list view")),
      Divider(),
      ListTile(title: Text("list view")),
      Divider(),
      ListTile(title: Text("list view")),
      Divider(),
      ListTile(title: Text("list view")),
    ]; */

  */
  }
}
