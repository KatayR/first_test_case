import 'package:first_test_case/providers/auth_provider.dart';
import 'package:first_test_case/views/login/components/formfields.dart';
import 'package:first_test_case/views/login/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool isLoading = false;

  void setLoading(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  void onLoginPressed() async {
    if (formKey.currentState!.validate()) {
      setLoading(true);
      formKey.currentState!.save();
      try {
        final authController = ref.read(authControllerProvider);
        final user = await authController.login(email, password);
        if (user != null) {
          Navigator.restorablePushReplacementNamed(context, '/participants');
        } else
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Invalid credentials')));
      } catch (error) {
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
                title: const Text("error"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(error.toString()),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("close"),
                    )
                  ],
                )),
          );
        }
      } finally {
        if (mounted) {
          setState(() {
            isLoading = false; // Stop loading
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  EmailFormField(onSaved: (value) => email = value!.trim()),
                  const SizedBox(height: 16),
                  PasswordFormField(onSaved: (value) => password = value!),
                  LoginButton(
                    isLoading: isLoading,
                    onLoginPressed: onLoginPressed,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
