import 'package:flutter/material.dart';

Widget button(Widget child, VoidCallback? func) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 178, 34, 34),
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      )),
      child: child);
}

