import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


final menuProvider = new _MenuProvider();

class _MenuProvider {
  
  List<dynamic> opciones = [];

/*   _MenuProvider() {
    cargarData();
  } */

  Future<List<dynamic>> cargarData() async {

    final resp = await rootBundle.loadString('assets/data/menu_opts.json');

    Map dataMap = json.decode(resp);

    //print(dataMap);

    opciones = dataMap['rutas'];

    //print(opciones);
    //
    return opciones;
  }

  /* 
  void _cargarData() {
    /* Future<List<dynamic>> cargarData() async {
      final resp = await rootBundle.loadString('assets/data/menu_opts.json');
      Map dataMap = jsonDecode(resp);
      opciones = dataMap['rutas'];

      return opciones;
    } */

    rootBundle.loadString("assets/data/menu_opts.json").then((data) {
      //print(data);
      
    });
  }

 */

}


