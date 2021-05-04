import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/counter_page.dart';
import 'package:flutter_application_1/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'que rapido va todo app',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => CounterPage()
        );
      },
    );
  }
}
