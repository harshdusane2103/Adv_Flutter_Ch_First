import 'dart:async';

import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/Provider/Introprovider.dart';
import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/HomeScreen.dart';
import 'package:adv_fullter_ch1/Screen/PR_1.6_Task_2/View/IntroScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    IntroProvider introProviderFalse =
    Provider.of<IntroProvider>(context, listen: false);
    Timer(const Duration(seconds: 6), () {
      if (introProviderFalse.isClicked) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const IntroScreen1()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    });
    double height = MediaQuery.of(context).size.height * 0.4;
    double width = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('asstes/image/logo.jpeg'),

            ),

          ],
        ),
      ),
    );
  }
}