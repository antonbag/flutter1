import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/card_page.dart';
import 'package:flutter_application_1/src/pages/counter_page.dart';
import 'package:flutter_application_1/src/pages/home_page.dart';
import 'package:flutter_application_1/src/pages/mariano_page.dart';
import 'package:flutter_application_1/src/pages/pelicula_detalle.dart';
import 'package:flutter_application_1/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {

  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'counter': (BuildContext context) => CounterPage(),
    'slider': (BuildContext context) => SliderPage(),
    'card': (BuildContext context) => CardPage(),
    'movies': (BuildContext context) => MarianoPage(),
    'detalle': (BuildContext context) => PeliculaDetalle(),
  };
  
}
