import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();

  int ultimoItem = 0;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      print("Scroll!!");
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //
        //_agregar10();
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: Stack(
        children: <Widget>[
          _crearLoading(),
          _crearLista(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final valorIndex = _listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
                "https://picsum.photos/300/500?random=$valorIndex"),
          );
        },
      ),
    );
  }

  Future _obtenerPagina1() async {
    final duration = Duration(seconds: 2);
    new Timer(
      duration,
      () {
        _listaNumeros.clear();
        ultimoItem++;
        _agregar10();
      },
    );

    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      ultimoItem++;
      _listaNumeros.add(ultimoItem);
    }

    setState(() {});
  }

  Future _fetchData() {
    _isLoading = true;
    setState(() {
      //
    });
    new Timer(
      Duration(seconds: 2),
      respuestaHttp,
    );
  }

  void respuestaHttp() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(seconds: 3),
      curve: Curves.fastOutSlowIn,
    );
    _agregar10();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 20),
        ],
      );
    } else {
      return Container();
    }
  }
}
