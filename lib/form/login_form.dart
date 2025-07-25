import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMe = false;
  bool firstSwitchValue = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(height: 50),
        // Tab Log In / Sign Up
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedToggleSwitch<bool>.size(
              current: firstSwitchValue,
              values: const [false, true],
              iconOpacity: 0.2,
              height: 50,
              indicatorSize: const Size.fromWidth(150),
              customIconBuilder: (context, local, global) => Text(
                local.value ? 'Sign Up' : 'Log In',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Color.lerp(
                    Colors.black,
                    Colors.black,
                    local.animationValue,
                  ),
                ),
              ),
              borderWidth: 5.0,
              iconAnimationType: AnimationType.onHover,
              style: ToggleStyle(
                backgroundColor: Colors.grey[200],
                indicatorColor: Colors.white,
                borderColor: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    // spreadRadius: 1,
                    // blurRadius: 2,
                    // offset: Offset(0, 15),
                  ),
                ],
              ),
              selectedIconScale: 1.0,
              onChanged: (value) => setState(() => firstSwitchValue = value),
            ),
          ],
        ),

        const SizedBox(height: 24),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),

        const SizedBox(height: 6),
        TextField(
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

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),

        const SizedBox(height: 6),
        TextField(
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
            const Text('Remember Me'),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text('Forgot Password?')),
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
          child: const Text('Log In', style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(height: 16),
        const Divider(height: 1),
        const SizedBox(height: 16),

        OutlinedButton.icon(
          icon: Image.asset('assets/icons/google.png', width: 18, height: 18),
          label: const Text(
            'Continue with Google',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Inter',
            ),
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
          label: const Text(
            'Continue with Apple',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Inter',
            ),
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
      ],
    );
  }
}
