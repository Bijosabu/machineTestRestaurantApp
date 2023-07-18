// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurantapp/presentation/HomePage/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    readLoginDetails();
    navigatorHome();
    super.initState();
  }

  Future<void> readLoginDetails() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    final password = prefs.getString('password');
    final rememberMe = prefs.getBool('rememberMe');

    if (username != null &&
        password != null &&
        rememberMe != null &&
        rememberMe) {
      // Navigate to the HomeScreen if the login details are available and "Remember Me" is true
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  navigatorHome() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const HomePage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/splashscreen.json', height: 180),
          const Text(
            'The Grand Marche',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
