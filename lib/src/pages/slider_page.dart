import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _valorCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("slider"),
          backgroundColor: Colors.green[800],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckbox(),
              _crearImagen(),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Container(
      child: Slider(
          value: _valorSlider,
          min: 10.0,
          max: 350.0,
          onChanged: _valorCheck
              ? null
              : (currentValue) {
                  setState(() {
                    _valorSlider = currentValue;
                  });
                }),
    );
  }

  Widget _crearCheckbox() {

    return CheckboxListTile(
      title: Text("Bloquear"),
      subtitle: Text("Se bloquea todo"),
      
      value: _valorCheck,
      onChanged: (currentValue) {
              setState(() {
                _valorCheck = currentValue!;
              });
            }
    );

/*     return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text("Bloquear")
        ),
        Checkbox(
            value: _valorCheck,
            onChanged: (currentValue) {
              setState(() {
                _valorCheck = currentValue!;
              });
            }),
      ],
    );
 */
  }

  Widget _crearImagen() {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Image(
          image: NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2Fw0fKnIESa7o%2Fmaxresdefault.jpg&f=1&nofb=1'),
          width: _valorSlider,
          fit: BoxFit.contain),
    );
  }
}
