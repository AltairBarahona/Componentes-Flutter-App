import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(context),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(context),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(context),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Soy el título de esta tarjeta"),
            subtitle: Text(
                "Aquí estamos haciendo asdfadfasdfasdf dfjdfj asdfj adsf j"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2(BuildContext context) {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            fit: BoxFit.fill,
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
                "https://assets.website-files.com/5d315dd990eed30aa7ca5f8f/5d3d843acb7dfd63bcf37e29_tree-and-woodland-company-landscape.jpg"),
            height: MediaQuery.of(context).size.height * 0.30,
            fadeInDuration: Duration(milliseconds: 200),

            // fadeInCurve: SawTooth(10),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text("Imagen de un paisaje"),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 1)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }
}
