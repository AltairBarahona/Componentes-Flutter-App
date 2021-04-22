import 'package:ComponentesApp/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class Ht2 extends StatelessWidget {
  List<String> data = ["uno", "tres", "cuatro", "cinco"];

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Otra práctica"),
        ),
        body: _generarLista(),
      ),
    );
  }

  Widget _generarLista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _generarItems(snapshot.data),
        );
      },
    );
    // return ListView(
    //   children: _generarItems(data),
    // );
  }

  List<Widget> _generarItems(List<dynamic> data) {
    List<Widget> elementos = [];

    data.forEach(
      (element) {
        final tiletemp = ListTile(
          title: Text(element["texto"]),
          //leading: getIcon(element["icon"]),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {},
        );

        elementos.add(tiletemp);
        elementos.add(Divider(color: Colors.red));
      },
    );

    return elementos;
  }
}
