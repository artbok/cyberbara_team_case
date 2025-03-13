import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<dynamic, dynamic>> getData() async {
  // final url = Uri.parse('https://api.example.com/data');
  // const String token = 'your_access_token_here';
  //
  // final response = await http.get(
  //   url,
  //   headers: {
  //     "X-Auth-Token": token
  //   },
  // );
  //
  //   return jsonDecode(response.body);
  await Future.delayed(const Duration(seconds: 2));
  return {"items": ["bebra1", "bebra2", "bebra3", "bebra4"]};
}