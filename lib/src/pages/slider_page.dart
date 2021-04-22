import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valorSlider = 0;
  bool bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearCheckboxListTile(),
            _crearSwitchListTile(),
            _crearImage(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Tamaño de imagen",
      // divisions: 20,
      value: valorSlider,
      onChanged: bloquearCheck
          ? null
          : (value) {
              setState(() {
                valorSlider = value;
              });
            },
      min: 0,
      max: 400,
    );
  }

  Widget _crearImage() {
    return Image(
      image: NetworkImage(
          "https://scontent.fuio1-1.fna.fbcdn.net/v/t1.0-9/25660411_1962115577334598_1357919134389895982_n.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeHkK6njCHrHrUB04kX4nnARikMpEN0hDRGKQykQ3SENEc0O5RbyYWeErGm4lpoy0n6kvmVxCaKxiIbG_g28VWDy&_nc_ohc=7r39WSdNDoIAX_sWMqo&_nc_ht=scontent.fuio1-1.fna&oh=c024e133903b22e224ab51b48e3e1a6d&oe=6063B20C"),
      width: valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return Checkbox(
      value: bloquearCheck,
      onChanged: (valor) {
        setState(() {
          bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearCheckboxListTile() {
    return CheckboxListTile(
      title: Text("Texto de prueba"),
      value: bloquearCheck,
      onChanged: (value) {
        setState(() {
          bloquearCheck = value;
        });
      },
    );
  }

  Widget _crearSwitchListTile() {
    return SwitchListTile(
      title: Text("Texto de prueba"),
      value: bloquearCheck,
      onChanged: (value) {
        setState(() {
          bloquearCheck = value;
        });
      },
    );
  }
}
