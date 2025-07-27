import 'package:flutter/material.dart';
import '../background/login_background.dart';
import '../form/login_form.dart';
import '../form/signup_form.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import '../theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Toggle Switch
            LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                return AnimatedToggleSwitch<bool>.size(
                  current: isSignUp,
                  values: const [false, true],
                  iconOpacity: 0.3,
                  height: 40,
                  indicatorSize: Size(width / 2, 50),
                  customIconBuilder: (context, local, global) => Center(
                    child: Text(
                      local.value ? 'Sign Up' : 'Log In',
                      style: togglebuttonBlackTextStyle,
                    ),
                  ),
                  borderWidth: 3.0,
                  style: ToggleStyle(
                    backgroundColor: Colors.grey[200],
                    indicatorColor: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    borderColor: Colors.grey[200],
                    indicatorBorderRadius: BorderRadius.circular(7),
                  ),
                  selectedIconScale: 1.0,
                  onChanged: (value) => setState(() => isSignUp = value),
                );
              },
            ),

            const SizedBox(height: 20),

            // Form
            isSignUp
                ? SignUpForm(onLoginTap: () => setState(() => isSignUp = false))
                : LoginForm(onSignUpTap: () => setState(() => isSignUp = true)),
          ],
        ),
      ),
    );
  }
}
