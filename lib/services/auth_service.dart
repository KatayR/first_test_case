import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';
import 'package:first_test_case/utils/constants.dart';

class AuthService {
  Future<User?> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(loginEndpoint),
        body: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return User(email: email, token: data['token']);
      } else {
        return null;
      }
    } catch (e) {
      return Future.error(loginErrorMessage);
    }
  }
}
