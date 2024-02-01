import 'package:first_test_case/models/participant.dart';
import 'package:first_test_case/views/login/login_screen.dart';
import 'package:first_test_case/views/participants/participants_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.token});
  final String? token;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: token == null ? LoginScreen() : ParticipantsScreen(),
        routes: {
          '/login': (context) => LoginScreen(),
          '/participants': (context) => ParticipantsScreen(),
        });
  }
}
