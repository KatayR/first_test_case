// formfields.dart
import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  final Function(String?) onSaved;

  const EmailFormField({Key? key, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        labelText: "email",
        border: UnderlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: onSaved,
    );
  }
}

class PasswordFormField extends StatelessWidget {
  final Function(String?) onSaved;

  const PasswordFormField({Key? key, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.lock),
        labelText: "password",
        border: UnderlineInputBorder(),
      ),
      onSaved: onSaved,
    );
  }
}
