import 'package:flutter/material.dart';
import 'package:sifina_mobile/theme/theme.dart';

class LoginForm extends StatefulWidget {
  final VoidCallback onSignUpTap;
  const LoginForm({super.key, required this.onSignUpTap});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMe = false;
  bool firstSwitchValue = false;
  bool _obscurePassword = true;
  bool isSignUp = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
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
        Row(
          children: [
            Checkbox(
              value: rememberMe, 
              onChanged: (val) {
                setState(() {
                  rememberMe = val!;
                });
              },
            ),
            Text('Remember Me', style: checkboxTextStyle),
            const Spacer(),
            TextButton(onPressed: () {}, child: Text('Forgot Password?', style: forgotpasswordTextStyle)),
          ],
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50), // Full width button
            backgroundColor: const Color.fromARGB(213, 14, 163, 232),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text('Log In', style: buttonWhitekTextStyle),
        ),

      const SizedBox(height: 16),
      Row(
        children: [
          Expanded(child: Divider(color: Colors.grey.shade400, endIndent: 10)),
          const Text('or', style: TextStyle(color: Colors.grey)),
          Expanded(child: Divider(color: Colors.grey.shade400, indent: 10)),
        ],
      ),
      const SizedBox(height: 16),


        OutlinedButton.icon(
          icon: Image.asset('assets/icons/google.png', width: 18, height: 18),
          label: Text(
            'Continue with Google',
            style: buttonBlackTextStyle,
          ),
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50), // Full width button
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          icon: Image.asset('assets/icons/apple.png', width: 18, height: 18),
          label: Text(
            'Continue with Apple',
            style: buttonBlackTextStyle,
          ),
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50), // Full width button
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
