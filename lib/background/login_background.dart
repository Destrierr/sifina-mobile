import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 14, 163, 232),
          // width: double.infinity,
          // height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                const SizedBox(height: 40),

                // LOGO
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Image.asset('assets/img/sifina.png', height: 70)],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Get Started for Free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Create an account or login to explore our app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(17),
                      ),
                    ),
                    child: SingleChildScrollView(child: child),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
