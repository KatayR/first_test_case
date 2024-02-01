import 'package:flutter/material.dart';
import '../../../utils/validators.dart';
import 'package:first_test_case/utils/constants.dart';

class EmailFormField extends StatelessWidget {
  final Function(String?) onSaved;

  const EmailFormField({Key? key, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        labelText: emailLabelText,
        border: UnderlineInputBorder(),
      ),
      validator: emailValidator,
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
        labelText: passwordLabelText,
        border: UnderlineInputBorder(),
      ),
      validator: passwordValidator,
      onSaved: onSaved,
    );
  }
}
