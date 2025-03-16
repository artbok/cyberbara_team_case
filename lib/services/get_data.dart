import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> getData() async {
  final url = Uri.parse('http://127.0.0.1:5000');

 Map<String, dynamic> params = {
    "url": "https://olimp.miet.ru/ppo_it/api"

  };

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode(params),
  );

  return jsonDecode(response.body);
}
