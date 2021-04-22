import 'package:flutter/material.dart';

final _iconosMap = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "input": Icons.input,
  "tune": Icons.tune,
  "list": Icons.list,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _iconosMap[nombreIcono],
    color: Colors.blue,
  );
}
