import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class AuthService {
  Future<User?> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return User(email: email, token: data['token']);
      } else {
        return null;
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
