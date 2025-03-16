import 'package:cyberbara_team_case/screens/map_screen.dart';
import 'package:flutter/material.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MapScreen(),
    );
  }
}