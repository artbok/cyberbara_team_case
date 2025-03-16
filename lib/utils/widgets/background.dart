import 'package:flutter/material.dart';


Widget background1(Widget child) {
  return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 127, 255, 212),
            Color.fromARGB(255, 64, 224, 208),
            Color.fromARGB(255, 72, 209, 204),
            Color.fromARGB(255, 175, 238, 238)
          ])),
      child: child);
}
