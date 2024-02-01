import 'package:flutter/material.dart';
import 'package:first_test_case/utils/constants.dart';

class LoginButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onLoginPressed;

  const LoginButton({
    Key? key,
    required this.isLoading,
    required this.onLoginPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onLoginPressed,
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
          : const Text(loginButtonText),
    );
  }
}
