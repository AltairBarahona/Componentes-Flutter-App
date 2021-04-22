import 'package:ComponentesApp/src/pages/Home_page.dart';
import 'package:ComponentesApp/src/pages/alert_page.dart';
import 'package:ComponentesApp/src/pages/animated_containder.dart';
import 'package:ComponentesApp/src/pages/avatar_page.dart';
import 'package:ComponentesApp/src/pages/card_page.dart';
import 'package:ComponentesApp/src/pages/input_page.dart';
import 'package:ComponentesApp/src/pages/listView_page.dart';
import 'package:ComponentesApp/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> generarRutas() {
  return <String, WidgetBuilder>{
    "/": (context) => HomePage(),
    "alert": (context) => AlertPage(),
    "avatar": (context) => AvatarPage(),
    "card": (context) => CardPage(),
    "animatedContainer": (context) => AnimatedContainerPage(),
    "input": (context) => Inputpage(),
    "slider": (context) => SliderPage(),
    "list": (context) => ListaPage(),
  };
}
