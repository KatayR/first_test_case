import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../services/auth_service.dart';

class AuthController {
  final AuthService authService;
  AuthController(this.authService);

  Future<User?> login(String email, String password) async {
    final user = await authService.login(email, password);
    if (user != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', user.email);
      await prefs.setString('token', user.token);
    }
    return user;
  }
}
