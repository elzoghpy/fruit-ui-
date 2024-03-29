import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruits/constants/resources/asset_manegar.dart';
import 'package:fruits/constants/resources/strings.dart';
import 'package:fruits/constants/resources/timer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  startDelay() {
    timer = Timer(const Duration(seconds: AppTimer.splashDelay), goNext);
  }

  goNext() async {
    Navigator.pushReplacementNamed(context, mainView);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            ImageAssets.one,
            // ImageAssets.splash0Image,
          ),
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}
