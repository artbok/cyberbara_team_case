import 'package:flutter/material.dart';


Widget background1(Widget child) {
  return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 85, 107, 47),
            Color.fromARGB(255, 107, 142, 35),
            Color.fromARGB(255, 154, 205, 50),
            Color.fromARGB(255, 144, 238, 144)
          ])),
      child: child);
}
