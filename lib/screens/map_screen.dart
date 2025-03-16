import 'package:flutter/material.dart';
import 'package:cyberbara_team_case/services/get_data.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Widget getItemWidget(List<String> matrix) {
    List<Widget> rows = [];
    for (int i = 0; i < 256; i++) {
      List<Widget> row = [];
      for (int j = 0; j < 256; i++) {
        Color color = Colors.green;
        if (matrix[i][j] == 'H') {
          color = Color.fromARGB(255, 28, 48, 181);
        } else {
          color = Color.fromARGB(255, 255, 0, int.parse(matrix[i][j]));
        }
        row.add(Flexible(child: Container(color: color)));
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

            return Column(children: rows);}});
          
  }
}
