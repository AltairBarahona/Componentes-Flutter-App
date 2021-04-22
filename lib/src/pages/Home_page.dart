import 'package:flutter/material.dart';
import 'package:ComponentesApp/src/providers/menu_provider.dart';
import 'package:ComponentesApp/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes final - Altair Barahona"),
      ),
      body: _lista(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.contact_mail),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Me llamo Altair Barahona"),
                      SizedBox(height: 20),
                      Text(
                          "Estoy apunto de graduarme en ingeniería de software de la UDLA."),
                      SizedBox(height: 20),
                      Container(
                          child: Text(
                              "Me interesa la capacidad de la tecnología para generar emociones. Conozco de todo un poco, pero me interesa principalmente:\n\n📱 El desarrollo móvil.\n🕹Aplicaciones interactivas.\n💎 Realidad aumentada (AR).\n🎴 Realidad virtual (VR).\n♦Desarrollo de video juegos.")),
                      SizedBox(height: 20),
                      Text("altair.profesional@gmail.com"),
                      Text("0992928557"),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //
        print("builder");
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, context) {
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach(
      (elemento) {
        final tempListTile = ListTile(
          title: Text(elemento["texto"]),
          leading: getIcon(elemento["icon"]),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) {
            //     return AlertPage();
            //   },
            // );

            // Navigator.push(context, route);
            Navigator.pushNamed(context, elemento["ruta"]);
          },
        );
        opciones.add(tempListTile);
      },
    );
    return opciones;
  }
}
