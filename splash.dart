import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'login.dart';
import 'home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    checkLoginStatus(); 
  }

  Future<void> checkLoginStatus() async {
    await Future.delayed(const Duration(seconds: 2)); 
    var box = Hive.box('userBox'); 
    if (box.containsKey('email') && box.containsKey('password')) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ScreenHome()),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ScreenLogin()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          ' Fasal ',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
