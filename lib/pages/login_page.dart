import 'package:flutter/material.dart';
import '../background/login_background.dart';
import '../form/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginBackground(child: LoginForm()));
  }
}
