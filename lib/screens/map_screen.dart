import 'package:flutter/material.dart';
import 'package:cyberbara_team_case/services/get_data.dart';

class MapScreen extends StatefulWidget {
  final String url;
  const MapScreen({super.key, required this.url});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Widget getItemWidget(List<dynamic> matrix) {
    List<Widget> rows = [];
    for (int i = 0; i < 64; i++) {
      List<Widget> row = [];
      for (int j = 0; j < 64; j++) {
        Color color = Colors.green;
        if (matrix[i][j] == 'H') {
          color = const Color.fromARGB(255, 28, 48, 181);
        } else  if (matrix[i][j] == 'S') {
          color = const Color.fromARGB(255, 27, 168, 2);
        } else if (matrix[i][j] == 'L') {
          color = const Color.fromARGB(255, 6, 213, 216);
        
        } 
        row.add(Container(
          color: color,
          width: 3,
          height: 3,
        ));
      }
      rows.add(Row(children: row));
    }
    return Column(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = [];

    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Ошибка: ${snapshot.error}');
          } else {
            data = snapshot.data!;
            List<Widget> rows = [];
            for (int i = 0; i < 4; i++) {
              List<Widget> row = [];
              for (int j = 0; j < 4; j++) {
                row.add(getItemWidget(data[i][j]));
              }
              rows.add(Row(children: row));
            }

            return Column(children: rows);
          }
        });
  }
}
