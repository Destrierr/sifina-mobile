import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Corrected the class name to LoginPage
    ),
  );
}
