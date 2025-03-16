
import 'package:flutter/material.dart';
import '../utils/widgets/button.dart';
import '../utils/widgets/background.dart';


class AdminRegistrationPage extends StatefulWidget {
  const AdminRegistrationPage({super.key});

  @override
  State<AdminRegistrationPage> createState() => _AdminRegistrationPageState();
}

class _AdminRegistrationPageState extends State<AdminRegistrationPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String status = "";
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: background1(
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: button(
                  const Text("OK",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  () async {
                    setState(() {
                      
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                const StoragePage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      }); 
                    }))]))));
                  }
                
  }

