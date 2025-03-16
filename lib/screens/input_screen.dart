import 'package:cyberbara_team_case/screens/map_screen.dart';
import 'package:flutter/material.dart';
import '../utils/widgets/button.dart';
import '../utils/widgets/background.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController controller =
      TextEditingController(text: "https://olimp.miet.ru/ppo_it/api");
  String status = "";
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: background1(Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
          Flexible(
              flex: 1,
              child: Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.0)),
                    ),
                  ),
                ),
              )),
          Flexible(
              flex: 1,
              child: button(
                  const Text("OK",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  () async {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        MapScreen(url: controller.text),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              })),
          Flexible(flex: 1, child: Container())
        ]))));
  }
}
