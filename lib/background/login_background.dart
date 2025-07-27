import 'package:flutter/material.dart';
import '../theme/theme.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                color: const Color.fromARGB(255, 14, 163, 232),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
              
                    // LOGO
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/img/logoSifinaV2 2.png',
                            height: 70,
                            width: 174,
                          ),
                        ],
                      ),
                    ),
              
                    const SizedBox(height: 11),
              
                    Text(
                      'Get Started for Free',
                      style: titleTextStyle,
                    ),
                    const SizedBox(height: 11),
              
                    Text(
                      'Create an account or login to explore our app',
                      textAlign: TextAlign.center,
                      style: subtitleTextStyle,   
                    ),
                    const SizedBox(height: 34),
                    
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0, vertical: 16.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(17),
                        ),
                      ),
                      child: child, // child ini bisa saja form yang panjang
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
