import 'package:flutter/material.dart';
import 'package:cyberbara_team_case/services/get_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> wrappedItems(List<String> items) {
    return items
        .map((item) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.orangeAccent,
          child: Expanded(
          child: Padding(
          padding: const EdgeInsets.all(20),
    child: Text(item))),
        ),
      ),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Map<dynamic, dynamic>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (!snapshot.hasData || snapshot.data!["items"] == null) {
              return const Text("No data available");
            } else {
              List<String> items =
              List<String>.from(snapshot.data!["items"]);
              return Column(children: wrappedItems(items));
            }
          },
        ),
      ),
    );
  }
}
