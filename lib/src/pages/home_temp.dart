import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["uno", "dos", "tres", "cuatro", "cinco"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        title: Text("Componentes temporales"),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    ));
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );

      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Subtitulo"),
            leading: Icon(Icons.wb_incandescent),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();

    return widgets;
  }
}
