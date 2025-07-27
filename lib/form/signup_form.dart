import  'package:flutter/material.dart';
import 'package:sifina_mobile/theme/theme.dart';

class SignUpForm extends StatefulWidget {
  final VoidCallback onLoginTap;

  const SignUpForm({super.key, required this.onLoginTap});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatpasswordController = TextEditingController();
  bool rememberMe = false;
  bool firstSwitchValue = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Nama',
            style: formtitleTextStyle,
          ),
        ),

        const SizedBox(height: 6),

        TextField(
          style: blackTextStyle,
          controller: namaController,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            // labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 16),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            style: formtitleTextStyle,
          ),
        ),

        const SizedBox(height: 6),

        TextField(
          style: blackTextStyle,
          controller: emailController,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            // labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 16),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
            style: formtitleTextStyle,
          ),
        ),

        const SizedBox(height: 6),
        TextField(
          style: blackTextStyle,
          controller: passwordController,
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            // labelText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),

      const SizedBox(height: 16),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Repeat Password',
            style: formtitleTextStyle,
          ),
        ),

        const SizedBox(height: 6),
        TextField(
          style: blackTextStyle,
          controller: repeatpasswordController,
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            // labelText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 46),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50), // Full width button
            backgroundColor: const Color.fromARGB(213, 14, 163, 232),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text('Sign Up', style: buttonWhitekTextStyle),
        ),

      const SizedBox(height: 16),
     TextButton(
  onPressed: widget.onLoginTap,
  child: RichText(
    text: TextSpan(
      text: 'Already have an Account? ',
      style: signupTextStyle, // Misalnya: TextStyle(color: Colors.grey)
      children: const [
        TextSpan(
          text: 'Login',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),
       
        const SizedBox(height: 40),
      ],
    );
  }
}
