import 'package:flutter/material.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  String nombre = "";
  String email = "";
  String password = "";
  String fecha = "";

  String opcionSeleccionada = "rayos x";

  List<String> _poderes = ["rayos x", "poder 2", "poder 3", "poder 4"];

  TextEditingController inputFecha = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs de texto"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: <Widget>[
          _crearInput(),
          Divider(height: 10, color: Colors.red),
          _crearEmail(),
          Divider(height: 10, color: Colors.red),
          _crearPassword(),
          Divider(height: 10, color: Colors.red),
          _crearFecha(context),
          Divider(height: 10, color: Colors.red),
          _crearDropDown(),
          Divider(height: 10, color: Colors.red),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text("Letras ${nombre.length}"),
        hintText: "Nombre y apellido",
        labelText: "Nombre",
        helperText: "Sólo es el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) {
        setState(() {
          nombre = value;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text("Letras ${nombre.length}"),
        hintText: "Su correo electrónico",
        labelText: "Correo electrónico",
        helperText: "Sólo es el nombre",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      // keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text("Letras ${password.length}"),
          hintText: "Password",
          labelText: "Password",
          helperText: "Sólo es la contraseña",
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.lock_open)),
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: inputFecha,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: "Fecha de nacimiento",
          labelText: "Fecha de nacimiento",
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.date_range)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());

        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2022),
    );

    if (datePicked != null) {
      setState(() {
        fecha = datePicked.toString();
        inputFecha.text = fecha;
      });
    }
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("Nombre: $nombre"),
      subtitle: Text("Email: $email"),
    );
  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30),
        DropdownButton(
          value: opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              opcionSeleccionada = opt;
            });
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> listaTemp = new List();

    _poderes.forEach(
      (poder) {
        listaTemp.add(
          new DropdownMenuItem(
            value: poder,
            child: Text(poder),
          ),
        );
      },
    );
    return listaTemp;
  }
}
