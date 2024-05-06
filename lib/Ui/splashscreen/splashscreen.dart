import 'package:firebase_app/Ui/login_signUp/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(Duration(seconds: 2),
   () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
  

        child: LottieBuilder.asset("assets/animations/loading.json"),

      ),
    );
  }
}