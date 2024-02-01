import 'package:first_test_case/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'views/login/login_screen.dart';
import 'views/participants/participants_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString(tokenKey);
  runApp(ProviderScope(child: MyApp(token: token)));
}

class MyApp extends StatelessWidget {
  final String? token;

  const MyApp({super.key, this.token});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: mainTitle,
      debugShowCheckedModeBanner: false,
      home: token == null ? const LoginScreen() : const ParticipantsScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/participants': (context) => const ParticipantsScreen(),
      },
    );
  }
}
