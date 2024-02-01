import 'package:first_test_case/providers/token_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../services/auth_service.dart';

class AuthController {
  final AuthService authService;
  final ProviderRef ref;

  AuthController(this.authService, this.ref);

  Future<User?> login(String email, String password) async {
    final user = await authService.login(email, password);
    if (user != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', user.email);
      await prefs.setString('token', user.token);

      ref.read(tokenProvider.notifier).state = user.token;
    }
    return user;
  }
}
